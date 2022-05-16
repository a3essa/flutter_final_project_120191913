import 'package:flutter/material.dart';
import 'package:fruitmarket/pages/main_Page.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter Your Name",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
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
            SizedBox(
              height: 32,
            ),
            Text(
              "Add Address",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: TextField(
                controller: nameController,
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(20)),
                  hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
                  hintText: 'Search',
                ),
                maxLines: 7,
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
            SizedBox(
              height: 32,
            ),


            Container(
              height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
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
                    )))
          ],
        ),
      ),
    );
  }
}
