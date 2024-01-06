import 'package:flutter/material.dart';
import 'package:my_wallet_app/widgets/cardDetails.dart';
import 'package:my_wallet_app/widgets/data.dart';

class CardsSection extends StatelessWidget {
  const CardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.yellow,
          alignment: Alignment.topLeft,
          child: Text(
            "Card Selected",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (cntext, i) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          //height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            boxShadow: customShadow,
                            borderRadius: BorderRadius.circular(30),
                          ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 150,
                      bottom: -200,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: -300,
                      top: -100,
                      bottom: -100,
                      child: Container(
                        decoration: BoxDecoration(
                         
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ),
                      ),
                    ),
        
                    // Positioned.fill(
                    //   left: -300,
                    //   top: -100,
                    //   bottom: -100,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       boxShadow: customShadow,
                    //       shape: BoxShape.circle,
                    //       color: Colors.white38,
                    //     ),
                    //   ),
                    // ),
                    CardDetails(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
