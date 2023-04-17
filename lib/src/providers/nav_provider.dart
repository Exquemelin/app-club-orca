import 'package:flutter/material.dart';


import 'package:url_launcher/url_launcher.dart';


class _NavProvider {

  _NavProvider(){
    cargarNav();
  }

  Future<Widget> cargarNav() async {
    
    //Esta es la direcicón de la aplicación web
    String baseUrl = "https://www.google.es/maps/place/Club+de+buceo+Orca/@43.5572506,-5.6941838,17.5z/data=!4m5!3m4!1s0xd367ce3aaaaaaab:0xe1a5c1174253b7cc!8m2!3d43.5575911!4d-5.6958291";
    
    //Lanzamos el enlace web
    if (await canLaunch(baseUrl)) {
      await launch(
        baseUrl,
        forceWebView: false,
        enableJavaScript: true,
      );
    } else {
      throw 'No se ha podido cargar la página de actividades';
    }
  }
}

final cargarNav = new _NavProvider();