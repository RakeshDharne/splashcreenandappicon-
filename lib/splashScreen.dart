import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sub_mgmt/main.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                myApp()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset('assets/images/splashphoto1.jpg'),
            Text('MESS MANAGEMENT',style: TextStyle(fontWeight: FontWeight.bold,fontSize:30)),
            SizedBox(height: 10,),
        SpinKitFoldingCube(
          color: Colors.deepOrange,
          size: 50.0,

        )


          ],
        ),

      ),
    );








  }
}





