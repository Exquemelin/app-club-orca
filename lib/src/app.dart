import 'package:flutter/material.dart';


import 'package:club_buceo_orca/src/routes/routes.dart';


class MyAPP extends StatelessWidget {

  @override 
  Widget build( context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      theme: ThemeData(
        // scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
        // backgroundColor: Color.fromRGBO(248, 248, 248, 1.0),
        // accentColor: Color.fromRGBO(248, 248, 248, 1.0),
      ),
    );
  }

}