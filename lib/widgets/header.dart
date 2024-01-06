import 'package:flutter/material.dart';
import 'package:my_wallet_app/widgets/data.dart';

class WalletHeader extends StatefulWidget {
  const WalletHeader({super.key});

  @override
  State<WalletHeader> createState() => _WalletHeaderState();
}

class _WalletHeaderState extends State<WalletHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text("kennedy's Wallet", 
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Expanded(child: Container()),
          Container(
            decoration: BoxDecoration(
              boxShadow: customShadow,
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: () {
              
            }, icon: Icon(Icons.notification_add)
            ),
          ),
 
        ],
      ),
    );
  }
}