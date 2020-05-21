import 'package:flutter/material.dart';


//header cuadrado
class HeaderCuadrado extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.blueAccent,
    );
  }
}

//header redondeado
class HeaderRedondeado extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.only(
          bottomLeft:Radius.circular(70.0),
          bottomRight: Radius.circular(70.0)
        )
      ),
    );
  }
}

//Header diagonal
class HeaderDiagonal extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter:_HeaderDiagonalPainter(),
        ),
      );
  }
}

class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //propiedades
    paint.color =Colors.blue;
    paint.style= PaintingStyle.fill;
    paint.strokeWidth=2;

    final path=new Path();
    //dibujar con el path y el paint
    path.moveTo(0, size.height*0.35);
    path.lineTo(size.width, size.height*0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0,0);
    //path.lineTo(0, size.height*0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
  }

}

//headerPico
class HeaderPico extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter:_HeaderPicoPainter(),
        ),
      );
  }
}

class _HeaderPicoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //propiedades
    paint.color =Colors.blue;
    paint.style= PaintingStyle.fill;
    paint.strokeWidth=20;

    final path=new Path();
    //dibujar con el path y el paint
    path.lineTo(0, size.height*0.25);
    path.lineTo(size.width*0.5, size.height*0.30);
    path.lineTo(size.width, size.height*0.25);
    path.lineTo(size.width, 0);
   

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
  }

}

//header triangulo
class HeaderTirangulo extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter:_HeaderTrianguloPainter(),
        ),
      );
  }
}

class _HeaderTrianguloPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //propiedades
    paint.color =Colors.blue;
    paint.style= PaintingStyle.fill;
    paint.strokeWidth=2;

    final path=new Path();
    //dibujar con el path y el paint
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
     //path.lineTo(0,size.height); ponerlo alreves
    path.lineTo(0,0);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
  }

}


//heder curvo

class HeaderCurvo extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter:_HeaderCurvo(),
        ),
      );
  }
}

class _HeaderCurvo extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //propiedades
    paint.color =Colors.blue;
    paint.style= PaintingStyle.fill;
    paint.strokeWidth=20;

    final path=new Path();
    //dibujar con el path y el paint
    path.lineTo(0, size.height*0.20);
    path.quadraticBezierTo(size.width*0.5, size.height*0.40, size.width, size.height*0.20);
   path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
  }

}


//header onda degradado

class HeaderOndaDegradado extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter:_HeaderOndaDegradado(),
        ),
      );
  }
}

class _HeaderOndaDegradado extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

final Rect rect= new Rect.fromCircle(
  center: Offset(150.0, 200.0),
  radius: 180,
);

    final Gradient gradient=new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue[50],
        Colors.redAccent[100],
        Colors.blueAccent[200],
      ],
      stops: [
        0,
        0.5,
        1.0,
      ]
      );

    final paint = Paint()..shader= gradient.createShader(rect);
    //propiedades
    paint.color =Colors.red;
    paint.style= PaintingStyle.fill;
    paint.strokeWidth=20;

    final path=new Path();
    //dibujar con el path y el paint
    path.lineTo(0, size.height*0.25);
    path.quadraticBezierTo(size.width*0.25, size.height*0.30, size.width*.5, size.height*0.25);
    path.quadraticBezierTo(size.width*0.75, size.height*0.20, size.width, size.height*0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
  }

}

//header onda

class HeaderOnda extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter:_HeaderOnda(),
        ),
      );
  }
}

class _HeaderOnda extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //propiedades
    paint.color =Colors.blue;
    paint.style= PaintingStyle.fill;
    paint.strokeWidth=20;

    final path=new Path();
    //dibujar con el path y el paint
    path.lineTo(0, size.height*0.25);
    path.quadraticBezierTo(size.width*0.25, size.height*0.30, size.width*.5, size.height*0.25);
    path.quadraticBezierTo(size.width*0.75, size.height*0.20, size.width, size.height*0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
  }

}


//header ondaVolteada

class HeaderOndaVolteada extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter:_HeaderOndaVolteada(),
        ),
      );
  }
}

class _HeaderOndaVolteada extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //propiedades
    paint.color =Colors.blue;
    paint.style= PaintingStyle.fill;
    paint.strokeWidth=20;

    final path=new Path();
    //dibujar con el path y el paint
    path.moveTo(0, size.height);
    path.lineTo(0, size.height*0.7);
    path.quadraticBezierTo(size.width*0.2, size.height*0.65, size.width*.5, size.height*0.7);
    path.quadraticBezierTo(size.width*0.8, size.height*0.75, size.width, size.height*0.7);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
  }

}


