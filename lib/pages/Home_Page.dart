import 'package:flutter/material.dart';
import 'package:fruitmarket/Widget/Product_Item.dart';
import 'package:fruitmarket/app_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 16.0 ),

              width: double.infinity,
              height: 314,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: Products_data.length,
                itemBuilder: (ctx, index) {
                  return ProductItem(
                    id: Products_data[index].id,

                    title: Products_data[index].title,
                    imgUrl: Products_data[index].imageUrl,
                    star:Products_data[index].star.toDouble(),
                    price: Products_data[index].price,

                  );


                },
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 16.0 ),

              width: double.infinity,
              height: 314,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: Products_data.length,
                itemBuilder: (ctx, index) {
                  return ProductItem(
                    id: Products_data[index].id,

                    title: Products_data[index].title,
                    imgUrl: Products_data[index].imageUrl,
                    star:Products_data[index].star.toDouble(),
                    price: Products_data[index].price,

                  );


                },
              ),
            ),






          ],
        ),
      ),
    );
  }
}
