import 'package:app_events_ui/src/constants/constants.dart';
import 'package:flutter/material.dart';

Widget listView(){
  final lista = Container(
    padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
    alignment: Alignment.centerLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('View the events list', style: TextStyle( color: textoColor, fontSize: 20, fontWeight: FontWeight.w500 )),
        _item( 'Luxury event' ),
        _item( 'The most beautiful event' ),
        _item( 'King event' )
      ],
    ),
  );

  return lista;
}

Widget _item( String titulo ){
  

  return Container(
    padding: EdgeInsets.symmetric( vertical: 5.5 ),
    child: Row(
      children: <Widget>[
        Icon(Icons.stars, color: colorPrimario),
        SizedBox( width: 15.0),
        Text(titulo, style: TextStyle( color: textoColor, fontSize: 15.0 )),
        Expanded(child: Container()),
        Image(
          image: AssetImage('assets/arrow_right.png'),
          width: 20,
        )
      ],
    ),
  );

}