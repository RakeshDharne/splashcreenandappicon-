import 'package:flutter/material.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          tooltip: 'Increment',
          elevation: 4.0,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Members'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('This is Members Page', style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
