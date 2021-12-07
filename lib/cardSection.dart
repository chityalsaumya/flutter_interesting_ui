import 'package:flutter/material.dart';
import 'package:pr_3/data.dart';

import 'cardDetails.dart';

class CardSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          alignment: Alignment.topLeft,
          child:Text('Selected Card',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0) ,),),
        Expanded(child: ListView.builder(
          itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,i){
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            decoration: BoxDecoration(color: primaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(40)),
          child: Stack(
            children: [
              Positioned.fill(
                  left:-300,
                  top: -100,
                  bottom:-100,
                  child:Container(
                    decoration: BoxDecoration(
                        boxShadow: customShadow,
                        shape: BoxShape.circle,
                        color: Colors.white54),)),
              Positioned.fill(
                  top: 120,
                  bottom:-200,
                  child:Container(
                    decoration: BoxDecoration(
                      boxShadow: customShadow,
                        shape: BoxShape.circle,
                        color: Colors.white38),)),
              Positioned.fill(
                  left:-300,
                  top: -100,
                  bottom:-100,
                  child:Container(
                    decoration: BoxDecoration(
                        boxShadow: customShadow,
                        shape: BoxShape.circle,
                        color: Colors.white24),)),
              CardDetails(),
            ],
          ),);
        })
        )],
    );
  }
}
