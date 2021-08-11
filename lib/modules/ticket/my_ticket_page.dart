import 'package:flutter/material.dart';

class MyTicketPage extends StatefulWidget {
  const MyTicketPage({ Key? key }) : super(key: key);

  @override
  _MyTicketPageState createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MyTicketPage'),
      ),
    );
  }
}