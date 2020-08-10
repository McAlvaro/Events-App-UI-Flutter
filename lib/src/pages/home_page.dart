import 'package:app_events_ui/src/constants/constants.dart';
import 'package:app_events_ui/src/pages/clipper.dart';
import 'package:app_events_ui/src/widgets/appbar_widget.dart';
import 'package:app_events_ui/src/widgets/buttons_category.dart';
import 'package:app_events_ui/src/widgets/cards_widget.dart';
import 'package:app_events_ui/src/widgets/list_widget.dart';
import 'package:app_events_ui/src/widgets/statistics_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          Column(
            children: <Widget>[
              appBar(),
              SizedBox( height: 10 ),
              ButtonsCategory(),
              statistics(),
              CardsView(),
              listView()
            ],
          )
        ],
      )
    );
  }


  Widget _fondoApp(){

    final fondo = Container(
      height: double.infinity,
      width: double.infinity,
      color: colorPrimario,
    );

    final containerBottom = ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 440.0,
        width: double.infinity,
        color: colorSecundario,
      ),
    );

    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        fondo,
        containerBottom
      ],
    );
  }
}