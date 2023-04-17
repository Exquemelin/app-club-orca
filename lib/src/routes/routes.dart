import 'package:flutter/material.dart';


import 'package:club_buceo_orca/src/pages/activities_page.dart';
import 'package:club_buceo_orca/src/pages/home_page.dart';
import 'package:club_buceo_orca/src/pages/information_page.dart';
import 'package:club_buceo_orca/src/pages/initial_page.dart';
import 'package:club_buceo_orca/src/pages/navigation_page.dart';


//Vamos a generar una función que nos devuelva el tipo de dato que necesitamos para las rutas
Map<String, WidgetBuilder> getApplicationRoutes(){

  //Debemos retornar datos del tipo map
  return<String, WidgetBuilder>{
    '/'           : ( BuildContext context ) => HomePage(),
    'initial'     : ( BuildContext context ) => InitialPage(),
    'activities'  : ( BuildContext context ) => ActivitiesPage(),
    'information' : ( BuildContext context ) => InformationPage(),
    'nav'         : ( BuildContext context ) => NavPage()
  };

}