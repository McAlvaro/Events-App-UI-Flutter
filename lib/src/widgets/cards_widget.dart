import 'package:app_events_ui/src/constants/constants.dart';
import 'package:flutter/material.dart';

class CardsView extends StatelessWidget {
  const CardsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView(
        scrollDirection: Axis.horizontal,

        pageSnapping: false,

        controller: PageController(
          initialPage: 0,
          viewportFraction: 0.46
        ),

        children: <Widget>[
          _card('The Best Event', '08 March', [true,true,true,true,false], '2.89 K'),
          _card('Lucky Event', '17 February', [true,true,true,true,true], '7.9 K'),
          _card('The Best Event', '10 June', [true,true,true,false,false], '1.89 K'),
          _card('The Best Event', '08 March', [true,true,true,true,false], '2.89 K'),
        ],
      ),
    );
  }

  Widget _card( String titulo, String fecha, List<bool> estrellas, String numero  ){

    final card = Card(
      margin: EdgeInsets.symmetric( horizontal: 8.0 ),
      color: tarjetaColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),

      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 20, vertical: 15 ),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: colorPrimario,
              radius: 15,
              child: Icon(Icons.star, color: colorSecundario, size: 17),
            ),
            SizedBox( height: 10),
            Text(titulo, style: TextStyle(fontSize: 16, color: textoColor.withOpacity(.6), fontWeight: FontWeight.w500)),
            Text(fecha, style: TextStyle(fontSize: 12, color: textoColor.withOpacity(.6))),

            Text('STAR events hall', style:  TextStyle( fontSize: 12, color: colorPrimario )),

            SizedBox( height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                _dibujarEstrella(estrellas[0]),
                _dibujarEstrella(estrellas[1]),
                _dibujarEstrella(estrellas[2]),
                _dibujarEstrella(estrellas[3]),
                _dibujarEstrella(estrellas[4]),

              ],
            ),

            SizedBox( height: 5 ),

            Text(numero, style: TextStyle( fontSize: 20.0, color: textoColor, fontWeight: FontWeight.bold )),

            SizedBox( height: 5 ),

            Container(
              height: 18,
              width: 60,
              child: RaisedButton(
                textColor: textoColor,
                shape: StadiumBorder(),
                color: barraCategoriaColor,
                child: Text('view', style: TextStyle( fontSize: 11 )),
                onPressed: (){}
              ),
            )
          ],
        ),
      ),

    );

    return card;

  }

  Widget _dibujarEstrella( bool isStar){
    return Icon(Icons.star, color: isStar ? estrellaColor : colorPrimario, size: 18);
  }
}