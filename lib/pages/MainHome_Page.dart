import 'package:flutter/material.dart';
import 'package:fruitmarket/pages/Home_Page.dart';

class MaimHomePage extends StatefulWidget {
  const MaimHomePage({Key? key}) : super(key: key);

  @override
  State<MaimHomePage> createState() => _MaimHomePageState();
}

class _MaimHomePageState extends State<MaimHomePage> {

  TextEditingController nameController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Fruit Market", style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xFF69A03A),
        actions: [
          Icon(Icons.notifications_none)
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 60,
                color: Color(0xFF69A03A),

              ),
              Stack(
                children: [
                  Align(

                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 27.0, right: 20, left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: nameController,
                          cursorColor: Colors.white54,
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold),

                          decoration: InputDecoration(
                              border: InputBorder.none,



                              hintStyle: TextStyle(
                                  fontSize: 16.0, color: Colors.grey),
                              hintText: 'Search', prefixIcon: Icon(
                            Icons.search, color: Colors.grey,)),
                          onChanged: (text) {
                            setState(() {
                              fullName = text;
                              //you can access nameController in its scope to get
                              // the value of text entered as shown below
                              //fullName = nameController.text;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          HomePage()

        ],
      ),
    );
  }
}
