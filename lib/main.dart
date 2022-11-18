import 'package:flutter/material.dart';
import 'package:flutter_app/app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesion3 Flutter',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      /*ThemeData(
        primarySwatch: Colors.pink,
      ),*/
      home: Home(),
    );
  }
}
