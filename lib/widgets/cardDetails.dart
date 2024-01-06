import 'package:flutter/material.dart';
import 'package:my_wallet_app/widgets/data.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 5,),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 80,
            width: 300,
            child: Image.asset("assets/mastercard2.png"),
          ),
        ),
        //Expanded(child: Container()),
       // SizedBox(height: 20,),
        Align(alignment: Alignment.bottomRight, 
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: customShadow,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        ),
        //SizedBox(height: 20,),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text("6893 **** **** 1930" ,style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold, 
                  ),
                  ),
                  // Text("1930", style: TextStyle(
                  //  fontSize: 20,
                  //  fontWeight: FontWeight.bold, 
                  // ),
                  // ),
                ],
              ),
              //SizedBox(height: 10,),
              Text("PLATINUM CARD", 
              style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold, 
                  ),
                  ),
            ],
          ),
          ),
        ),
      ],
    );
  }
}