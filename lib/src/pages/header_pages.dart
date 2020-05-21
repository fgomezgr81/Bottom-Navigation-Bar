import 'package:disenosapp/src/widgets/headers.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HeaderOndaVolteada(),
        HeaderOnda(),
        ],
      ),
    );
  }
}