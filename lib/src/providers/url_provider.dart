import 'package:flutter/material.dart';



import 'package:url_launcher/url_launcher.dart';


class _UrlProvider {

  _UrlProvider(){
    cargarUrl();
  }

  Future<Widget> cargarUrl() async {
    
    //Esta es la direcicón de la aplicación web
    String baseUrl = "https://orca.c.ovd.interhost.com/";
    
    //Lanzamos el enlace web
    if (await canLaunch(baseUrl)) {
      await launch(
        baseUrl,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'No se ha podido cargar la página de actividades';
    }
  }
}

final cargaUrl = new _UrlProvider();