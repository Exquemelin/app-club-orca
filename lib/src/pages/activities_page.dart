import 'package:flutter/material.dart';


import 'package:club_buceo_orca/src/providers/url_provider.dart';


class ActivitiesPage extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {

    _webActividades();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
         children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular( 15.0 ),
            child: Image(
              height: 250.0,
              image: AssetImage('assets/club_orca.jpeg')
            ),
          ),
        ]
      ),
    );

    // return Center(
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular( 40.0 ),
    //     child: Container(
    //       color: Colors.blue[300],
    //       height: 150.0,
    //       width: 250.0,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Icon(
    //             Icons.view_list,
    //             size: 50.0,
    //             color: Colors.white,
    //           ),
    //           FlatButton(
    //             onPressed: (){
    //               _webActividades();
    //             },
    //             child: Text( 'Ver Actividades', style: TextStyle( color: Colors.white, fontSize: 25.0 ), ),
    //             color: Colors.blue[300],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ), 
    // );

  }


  Widget _webActividades(){

    return Container(
      child: FutureBuilder(

        //Le cargamos el future que necesitamos
        future: cargaUrl.cargarUrl(),
        
        //Generamos el builder
        builder: ( context, AsyncSnapshot snapshot){
          return Center();
        },
      )

    );

  }

}

/* Widget _test () {
  
  return WebView(
    initialUrl: 'https://orca.c.ovd.interhost.com/',
    javascriptMode: JavascriptMode.unrestricted,
  );
} */


