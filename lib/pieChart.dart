import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pr_3/data.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(shape:BoxShape.circle,
          boxShadow: customShadow,color: primaryColor),
        child: Stack(children: [
          Padding(padding: const EdgeInsets.all(49),
          child: CustomPaint(
            child:Container(),
            foregroundPainter: PieChartPainter(),),),
          Center(
        child:Container(
          height: 90,
          width: 90,
          child:Center(child: Text('\$1234',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
          decoration: BoxDecoration(shape:BoxShape.circle,
              boxShadow: customShadow,color: primaryColor),
        ),
          ),
        ],
        ),
    ),);
  }
}

class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
Offset center = Offset(size.width/2, size.height/2);
double radius = min(size.width/2, size.height/2);

var paint = new Paint()..style=PaintingStyle.stroke..strokeWidth=100;

double total = 0;
expenses.forEach((element) {
  total+=element['amount'];
});
var startRadian = -pi/2;
for(int i=0; i<expenses.length; i++){
  var currentExpense = expenses[i];
  var sweepRadian = (currentExpense['amount']/total)*2*pi;
  paint.color = pieColors[i];
  canvas.drawArc(Rect.fromCircle(center: center, radius: radius),startRadian, sweepRadian,false, paint);
  startRadian+=sweepRadian;
}
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }
}
