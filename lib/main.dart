import 'package:flutter/material.dart';
import 'package:my_wallet_app/widgets/cards_section.dart';
import 'package:my_wallet_app/widgets/data.dart';
import 'package:my_wallet_app/widgets/expenses_section.dart';
import 'package:my_wallet_app/widgets/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Small Wallet',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primaryColor,
              ),
              height: 50,
              child: WalletHeader(),
            ),
            SizedBox( height: 20,),
            Expanded(child: CardsSection()),
            Expanded(child: ExpensesSection()),
          ],
        ),
      ),
    );
  }
}
