import 'package:flutter/material.dart';


import 'package:club_buceo_orca/src/providers/url_provider.dart';
import 'package:club_buceo_orca/src/pages/activities_page.dart';
import 'package:club_buceo_orca/src/pages/information_page.dart';
import 'package:club_buceo_orca/src/pages/initial_page.dart';
import 'package:club_buceo_orca/src/pages/navigation_page.dart';
import 'package:club_buceo_orca/src/providers/nav_provider.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle estilo = new TextStyle(
    fontSize: 16.0
  );

  int _navBarIndex = 0;

  @override
  Widget build( context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CLUB ORCA',
          style: TextStyle(
            fontSize: 25.0
          )
        )
      ),
      body: 
      _callPage( _navBarIndex ),
      bottomNavigationBar: _crearBottomNavigationBar(),
      
    );
  }

  // Widget _webActividades(){

  //   return Container(
  //     child: FutureBuilder(

  //       //Le cargamos el future que necesitamos
  //       future: cargaUrl.cargarUrl(),
        
  //       //Generamos el builder
  //       builder: ( context, AsyncSnapshot snapshot){
  //         return Center();
  //       },
  //     )

  //   );

  // }

  Widget _callPage( int indexPage ){

    if ( indexPage == 1 || indexPage == 3 ){
      _navBarIndex = 0;
    }

    switch ( indexPage ) {
      case 0: return InitialPage();
      case 1: return ActivitiesPage();
      case 2: return InformationPage();
      case 3: return NavPage();
      default: return InitialPage();
    }

  }

  Widget _crearBottomNavigationBar(){

    return BottomNavigationBar(
      iconSize: 30.0,
      selectedFontSize: 18.0,
      unselectedFontSize: 14.0,
      showUnselectedLabels: true,
      currentIndex: _navBarIndex,
      onTap: ( index ){
        setState( () {
          _navBarIndex = index;
        });
      },
      items: [
        _crearNavItem( Icon( Icons.home ) , 'Inicio' ),
        _crearNavItem( Icon( Icons.format_list_bulleted ) , 'Actividades' ),
        _crearNavItem( Icon( Icons.info_outline ) , 'Información' ),
        _crearNavItem( Icon( Icons.location_on ), 'Localización' ),
      ]
    );

  }

  BottomNavigationBarItem _crearNavItem ( Icon icon, String title ){

    return BottomNavigationBarItem(
      backgroundColor: Colors.blue[300],
      icon: icon,
      title: Text( title ),
    );

  }

  // Widget _navLocation(){

  //   // Navigator.pushNamed(context, 'initial');

  //   return Container(
  //     child: FutureBuilder(

  //       //Le cargamos el future que necesitamos
  //       future: cargarNav.cargarNav(),
        
  //       //Generamos el builder
  //       builder: ( context, AsyncSnapshot snapshot){
  //         return Center();
  //       },
  //     )

  //   );

  // }

  // Widget _textoRelleno (String texto, double inset){

  //   return Container(
  //     padding: EdgeInsets.all( inset ),
  //     child: Text('$texto',
  //       textAlign: TextAlign.justify,
  //       style: estilo,
  //     ),
  //   );

  // }
}