import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruitmarket/pages/main_Page.dart';



class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF69A03A),
        leading: BackButton(
            color: Colors.white,
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        title: Text("DETAILS"  , style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  margin: new EdgeInsets.only(top: 8.0 , left: 16  ,right: 16),

                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                          "images/hh.png"),
                      fit: BoxFit.fill,
                    ),
                    //shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 16,),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text("Grapes", style: TextStyle(
                      fontWeight: FontWeight.bold , fontSize: 18
                  ),),
                ),
                SizedBox(height:8,),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0  , right: 16),
                  child: Text("Grapes will provide natural nutrients. The  Chemical "
                      "in organic grapes which can be healthier hair and"
                      "skin. It can be improve Your heart health. Protect your"
                      "body from Cancer."
                      , style: TextStyle(
                          fontWeight: FontWeight.bold , fontSize: 12 , color: Colors.grey
                      ), textAlign: TextAlign.justify),) ,

              ],
            ),

            SizedBox(height:200,),

            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            Container(
                              margin: new EdgeInsets.symmetric(horizontal: 8.0),
                              child: Image(image: AssetImage(
                                  'images/rupee.png')),
                            ),
                            Text("160 Per/ kg"),
                          ],
                        ),

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
                                  'Verify',
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
    );
  }
}
