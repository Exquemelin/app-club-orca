import 'package:club_buceo_orca/src/providers/nav_provider.dart';
import 'package:flutter/material.dart';



class NavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    cargarNav.cargarNav();

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
  }
}