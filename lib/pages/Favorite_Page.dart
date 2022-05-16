import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruitmarket/Widget/Cart_Item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruitmarket/pages/main_Page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF69A03A),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Shopping Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),                height: 60,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.location_on_rounded),
                        Text(" 440001  Nagpur ,Maharashtra"  , style: TextStyle(fontSize: 10),),
                        Icon(Icons.keyboard_arrow_down_rounded),
                        Text("Change Address"  , style: TextStyle(fontSize: 10 , color: Color(0xFF7089F0)),),

                      ],
                    ),
                  ),

                  Container(
                    height: 40,
                    color: Color(0xFF707070),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Vegetables", style: TextStyle(fontSize: 16 , color: Colors.white),),
                        ),
                      ],
                    ),
                  ),









                  CartItem(),
                  CartItem(),
                ],
              ),

              SizedBox(height:150,),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total- RS 570"),
                          Container(
                              height: 60,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF69A03A),
                              ),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => MainPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Place Order',
                                    style: TextStyle(color: Colors.white),
                                  ))),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
