import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:fruitmarket/pages/MainHome_Page.dart';
import 'package:fruitmarket/pages/Shopping_Page.dart';

import 'Favorite_Page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int selectedIndex = 0 ;
  Widget pageContent = MaimHomePage()  ;

  TextEditingController nameController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          selectedItemColor: Color(0xFFD09229),
          onTap: (value){
            print(value);
            setState(() {
              selectedIndex = value ;
            });
            switch(value){
              case 0 :
                pageContent = MaimHomePage();
                break;
              case 1 :
                pageContent = ShoppingPage();
                break;
              case 2 :
                pageContent = FavoritePage();
                break;


            }
          } ,
          currentIndex:selectedIndex ,
          items: [

            BottomNavigationBarItem(icon: Image.asset('images/homee.png', color: Color(0xFF69A03A), width: 40  , height: 40, ), label: 'Home',),
            BottomNavigationBarItem(icon: Image.asset('images/cart.png', color: Color(0xFF69A03A), width: 40, height: 40,), label: 'Shopping cart',),
            BottomNavigationBarItem(icon: Image.asset('images/heart.png', color: Color(0xFF69A03A), width: 40, height: 40,), label: 'Favourite',),


          ],
        ),

        body: pageContent );
  }
}
