
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/pages/address_Page.dart';


class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {

  TextEditingController nameController = TextEditingController();
  String fullName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 220,
              width: 220,
              padding: EdgeInsets.only(top: 64),
              child: Image.asset('images/store.png'),
            ),
          ],
        ),
        SizedBox(height: 16,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Fruit Market' , style: TextStyle(color: Color(0xFF69A03A) , fontWeight: FontWeight.bold , fontSize: 32),),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top : 32.0  , right: 20 , left: 20 ),
          child: Container(
            child: TextField(
              controller: nameController,
              cursorColor: Colors.black,
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(20)),
                hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
                hintText: 'Search',
              ),
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

        SizedBox(height: 32,),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              Text('or'),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: (){
            print("df");

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => AddressPage(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top : 32.0  , right: 20 , left: 20 ),
            child: Container(
              height: 60,

              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/logo.png"),
                  SizedBox(width: 8,),
                  Text("Log In with")

                ],
              ),
            ),
          ),
        )



      ],
    ));
  }
}
