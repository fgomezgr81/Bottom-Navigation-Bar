import 'package:disenosapp/src/pages/animaciones_page.dart';
//import 'package:disenosapp/src/pages/header_pages.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: AnimacionesPage(),
    );
  }
}