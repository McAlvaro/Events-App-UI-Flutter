import 'package:app_events_ui/src/pages/home_page.dart';
import 'package:flutter/material.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Events App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/'     : (BuildContext context) => HomePage()
      },
    );
  }
}
