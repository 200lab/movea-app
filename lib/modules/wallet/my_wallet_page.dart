import 'package:flutter/material.dart';

class MyWalletPage extends StatefulWidget {
  const MyWalletPage({ Key? key }) : super(key: key);

  @override
  _MyWalletPageState createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Wallet Page'),),
    );
  }
}