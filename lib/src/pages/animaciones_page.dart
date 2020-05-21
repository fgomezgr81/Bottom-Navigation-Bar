import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimacionesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
 
  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin {

AnimationController animationController;
Animation<double> rotacion;

@override
  void initState() {
    animationController = new AnimationController(vsync: this,duration: Duration(milliseconds:4000));
    rotacion= Tween(begin:0.0,end:2.0 * Math.pi).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceOut
      )
    );

    animationController.addListener((){
      if(animationController.status == AnimationStatus.completed){
        animationController.reverse();
      }
    }
      
    );
     animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   

    return AnimatedBuilder(
      animation: animationController,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget child) {
        return Transform.rotate(child: child, angle: rotacion.value,);
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}