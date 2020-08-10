import 'dart:math';

import 'package:app_events_ui/src/constants/constants.dart';
import 'package:flutter/material.dart';

Widget appBar(){
  final appBar = Container(
    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 12,
          backgroundImage: AssetImage('assets/back.png'),
          backgroundColor: Colors.transparent,
        ),
        SizedBox( width: 16 ),
        Text('Events', style: TextStyle( fontSize: 20, color: textoColor )),
        Expanded(child: Container()),
        Transform.rotate(
          angle: pi / 2,
          child: Icon(Icons.search, color: Colors.white, size: 25),
        )
      ],
    ),
  );

  return SafeArea(child: appBar);


}