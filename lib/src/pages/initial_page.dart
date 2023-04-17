import 'package:flutter/material.dart';



class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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