import 'package:flutter/material.dart';

import 'data.dart';

class CardDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(alignment: Alignment.topLeft,child: Positioned.fill(
            child:Container(
              margin: EdgeInsets.all(5),
              height: 60,
              decoration: BoxDecoration(
                  boxShadow: customShadow,
                  shape: BoxShape.circle,
                  color: Colors.red),)),),
        Align(alignment: Alignment.topLeft,child: Positioned.fill(
            child:Container(
              margin: EdgeInsets.only(left: 60,top: 5),
              height: 60,
              decoration: BoxDecoration(
                  boxShadow: customShadow,
                  shape: BoxShape.circle,
                  color: Colors.deepOrangeAccent),)),),
        Align(alignment: Alignment.topLeft,child: Positioned.fill(
            child:Container(
              child: Text("mastercard",style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,),),
               ))),
        Align(alignment: Alignment.bottomRight,
          child: Padding(padding: const EdgeInsets.all(20.0),
            child: Container(height: 50,width: 70,
              decoration:BoxDecoration(color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(15)
        ),
        ),
        ),
        ),
        Align(alignment: Alignment.bottomLeft,
         child:Padding(
         padding: const EdgeInsets.only(bottom: 30.0,left: 10.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('*** **** ***',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Text('1930',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
              ],
            ),
            Text('PLATINUM CARD',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
          ],
        ),
        ),
        ),
      ],
    );
  }
}
