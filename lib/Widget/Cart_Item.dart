import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0  ),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],

        ),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(

                    margin: new EdgeInsets.only(top: 8.0, left: 0, right: 16, bottom: 8),

                    width: 100,
                    height: 100,
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


                  Expanded(
                    child: Container(
                      // height: 60,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text('Broccoli', style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold),),
                                Text('Rs 40 Saved', style: TextStyle(fontSize: 10 , color: Color(0xFF69A03A)),),
                                Icon(Icons.restore_from_trash),
                              ],
                            ),
                            SizedBox(height: 6,),
                            Text('150 Per/ kg', style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold),),
                            SizedBox(height: 12,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Row(),
                                Row(
                                  children: [
                                    Container(
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          color: Colors.white,
                                          size: 12.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.minus,
                                          color: Colors.white,
                                          size: 12.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )






































                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
