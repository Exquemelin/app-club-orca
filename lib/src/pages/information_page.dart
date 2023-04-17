import 'package:flutter/material.dart';




class InformationPage extends StatelessWidget {

  double insetV = 8.0;
  double insetH = 15.0;

  TextStyle _styleHeader = new TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0
  );

  TextStyle _styleBody = new TextStyle(
    fontSize: 16.0
  );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox( height: 10.0 ),
              _textHeader( '¿Quiénes somos?', insetV, insetH ),
              _textBody('El Club Deportivo Orca se encuentra en la localidad de Gijón, en la costa central asturiana. Es una entidad sin ánimo de lucro formada por un grupo de personas que comparten su afición por el Buceo Deportivo en todas sus disciplinas.', insetV, insetH ),
              _textHeader( '¿Dónde estamos?', insetV, insetH ),
              _textBody('Nos podrás encontrar en el puerto de El Musel, cerca de la Rula de Gijón, en las instalaciones de Formar.', insetV, insetH ),
              // FadeInImage(
              //   fit: BoxFit.fitHeight,
              //   placeholder: AssetImage( 'assets/loading.gif' ),
              //   image: AssetImage( 'assets/logo_formar.jpg'),
              // ),
              // _showImage( 'assets/formar_localizacion.PNG' ),
              _textBody( 'Formar colabora con nostros aportando sus lanchas y patrones profesionales.', insetV, insetH ),
              Image(image: AssetImage('assets/logo_formar.jpg') ),
              // _showImage( 'assets/logo_formar.jpg' ),
              _textHeader( '¿Conoces nuestras activiades?', insetV, insetH ),
              _textBody( 'Realizamos salidas desde embarcación hacia diversos puntos de la costa gijonesa, y municipios cercanos. Todas las salidas son guíadas, y están destinadas a buceadores deportivos de todas las titulaciones.', insetV, insetH ),
              _textBody( 'Para aquellas personas que no posean una titulación, podrán realizar un Bautismo de Buceo y tener una primera experciencia con el mundo submarino.', insetV, insetH ),
              _textBody( 'También se relizan cursos de buceo de todas las titulaciones. Tanto para gente que quiera obtener su primera estrella y convertirse en buceador deportivo, como para aquellos que quieran continuar su formación.', insetV, insetH ),
              _textHeader( '¿Cómo contactar?', insetV, insetH),
              _textBody( 'Si estás interesado en bucear con nosotros, ponte en contacto a través de los siguientes medios:', insetV, insetH ),
              _subTextBody( '- Llamando a los números de teléfono:', insetV *.3, insetH),
              _subTextBody( '985 194 960', insetV *.3 , insetH * 2.5 ),
              _subTextBody( '609 936 816', insetV *.3, insetH * 2.5 ),
              _subTextBody( '646 368 838', insetV *.3, insetH * 2.5 ),
              _subTextBody( '- Escribiendo a buceorca@hotmail.com', insetV *.3, insetH ),
              _textBody( 'Para realizar un bautismo de buceo, o formarte como buceador deportivo, ponte en contacto a través de los siguientes medios:', insetV, insetH ),
              _subTextBody( '- Llamando al número 615 269 164', insetV *.3, insetH ),
              _subTextBody( '- Escribiendo a buceorca@hotmail.com', insetV *.3, insetH ),
              SizedBox( height: 20.0 ),
            ]
          ),
        )
      ]
    );
    
  }

  Widget _textHeader (String texto, double insetV, double insetH ){

    return Container(
      padding: EdgeInsets.symmetric( vertical: insetV, horizontal: insetH ),
      child: Text('$texto',
        textAlign: TextAlign.justify,
        style: _styleHeader,
      ),
    );

  }

  Widget _textBody (String texto, double insetV, double insetH ){

    return Container(
      padding: EdgeInsets.symmetric( vertical: insetV, horizontal: insetH ),
      child: Text('$texto',
        textAlign: TextAlign.justify,
        style: _styleBody,
      ),
    );

  }

  Widget _subTextBody (String texto, double insetV, double insetH ){

    return Container(
      padding: EdgeInsets.only( left: insetH + 10.0, right: insetH, top: insetV, bottom: insetV ),
      child: Text('$texto',
        textAlign: TextAlign.justify,
        style: _styleBody,
      ),
    );

  }

  Widget _showImage ( String image ){

    return Padding(
      padding: EdgeInsets.symmetric( vertical: insetV, horizontal: insetH ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FadeInImage(
            excludeFromSemantics: true,
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            placeholder: AssetImage( 'assets/loading.gif' ),
            image: AssetImage( image ),
          ),
        ],
      ),
    );
    
  }

}