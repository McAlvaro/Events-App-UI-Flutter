import 'package:app_events_ui/src/constants/constants.dart';
import 'package:flutter/material.dart';

class ButtonsCategory extends StatefulWidget {
  ButtonsCategory({Key key}) : super(key: key);

  @override
  _ButtonsCategoryState createState() => _ButtonsCategoryState();
}

class _ButtonsCategoryState extends State<ButtonsCategory> {

  static final _selected = colorSecundario;
  static final _unselected = barraCategoriaColor;

  Color _btnDaily = _unselected;
  Color _btnWeekly = _unselected;
  Color _btnMonthly = _selected;


  @override
  Widget build(BuildContext context) {

    final estiloBotones = TextStyle( fontSize: 16, color: textoColor, fontWeight: FontWeight.w300 );

    return Container(
      padding: EdgeInsets.all(0),
      height: 36.0,
      width: 300.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: barraCategoriaColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RaisedButton(
            color: _btnDaily,
            elevation: 0,
            shape: StadiumBorder(),
            textColor: Colors.white,
            child: Text('Daily', style: estiloBotones),
            onPressed: (){
              setState(() {
                _btnDaily = _selected;
                _btnWeekly = _unselected;
                _btnMonthly = _unselected;
              });
            }
          ),
          RaisedButton(
            color: _btnWeekly,
            elevation: 0,
            shape: StadiumBorder(),
            textColor: Colors.white,
            child: Text('Weekly', style: estiloBotones),
            onPressed: (){
              setState(() {
                _btnDaily = _unselected;
                _btnWeekly = _selected;
                _btnMonthly = _unselected;
              });
            }
          ),
          RaisedButton(
            color: _btnMonthly,
            elevation: 0,
            shape: StadiumBorder(),
            textColor: Colors.white,
            child: Text('Monthly', style: estiloBotones),
            onPressed: (){
              setState(() {
                _btnDaily = _unselected;
                _btnWeekly = _unselected;
                _btnMonthly = _selected;
              });
            }
          )
        ],
      ),
    );
  }
}