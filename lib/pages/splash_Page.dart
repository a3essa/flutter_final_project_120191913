import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/pages/Onbording.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Onbording())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF69A03A),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Container(child: Text('Fruit Market' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 32),)),
            ),

            Expanded(
              child: Stack(
                  children: [
                    Positioned.fill(child: Image.asset('images/mixfruit.png',fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,)),




                  ]
              ),
            )
          ],
        ));
  }
}
