
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class ProductItem extends StatelessWidget {

  final String id;
  final String title;
  final String price;
  final double star;
  final String imgUrl;
  const ProductItem({Key? key, required this.id, required this.title, required this.price, required this.star, required this.imgUrl}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 32.0),
      child: Container(

        margin: new EdgeInsets.symmetric(horizontal: 12.0 , vertical: 12),

        width: 140,
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
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top : 8.0),
                  child: Container(
                    margin: new EdgeInsets.symmetric(horizontal: 8.0),

                    height: 140.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                            imgUrl),
                        fit: BoxFit.fill,
                      ),
                      //shape: BoxShape.circle,
                    ),
                  ),
                )  ,

                Padding(
                  padding: const EdgeInsets.only(top : 8.0),
                  child: Container(
                    margin: new EdgeInsets.symmetric(horizontal: 8.0),

                    child: RatingBar.builder(
                      initialRating: star,
                      itemSize: 16,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top : 8.0),
                  child: Container(
                      margin: new EdgeInsets.symmetric(horizontal: 8.0),

                      child: Text(title)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top : 8.0 , bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: [
                      Container(
                        margin: new EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image(image: AssetImage(
                            'images/rupee.png')),
                      ),
                      Text(price),
                    ],
                  ),
                ),







              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0 , top: 16),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,

                ),
                child: Center(
                  child: Icon(  FontAwesomeIcons.heart),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
