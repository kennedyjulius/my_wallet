import 'package:flutter/material.dart';
import 'package:my_wallet_app/widgets/data.dart';
import 'package:my_wallet_app/widgets/pieChart.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Expenses", 
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 20),
            ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: expenses.map((value) => Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                  children: [
                    CircleAvatar(radius: 5, backgroundColor: pieColors[expenses.indexOf(value)],),
                    SizedBox(width: 5,),
                    Text(value['name'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                  ],  
                  ),
                )).toList(),
              ),
            ),
            ),
            const Expanded(
              flex: 6,
              child: PieChart()),
          ],
        ),
      ],
    );
  }
}