import 'package:app_events_ui/src/constants/constants.dart';
import 'package:flutter/material.dart';

Widget statistics(){
  final statistics = Container(
    padding: EdgeInsets.all(20),
    child: Column(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan( text: 'The statistics of', style: TextStyle( fontSize: 18 ) ),
              TextSpan( text: ' last month', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) )
            ]
          )
        ),

        SizedBox( height: 20, ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: barraCategoriaColor
          ),

          child: Text('5.148 K', style: TextStyle( fontSize: 24, color: textoColor, fontWeight: FontWeight.w900 )),
        )

      ],
    ),
  );

  return statistics;
}