import 'package:flutter/material.dart';

class NotifsPage extends StatelessWidget {
  const NotifsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('This is Notifications Page', style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}