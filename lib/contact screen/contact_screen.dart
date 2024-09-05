import 'package:flutter/material.dart';
import 'package:internship/contact%20screen/contact_model.dart';

import 'details_screen.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  static const String routeName = 'Contact';
  String name = '';
  String email = '';
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Contact Screen',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan[900]),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Divider(color: Colors.black,indent: 40,endIndent: 40,),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val){
                  name=val;
                },
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Please Enter Your Name',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                  labelStyle: TextStyle(
                      color: Colors.cyan[900],
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val){
                  email=val;
                },
                decoration: InputDecoration(
                  suffixIcon:
                      Icon(Icons.email_outlined, color: Colors.cyan[900]),
                  labelText: 'Email',
                  hintText: 'Please Enter Your Email',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                  labelStyle: TextStyle(
                      color: Colors.cyan[900],
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    )
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val){
                  message=val;
                },
                decoration: InputDecoration(
                  labelText: 'Message',
                  hintText: 'Write Your Message',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                  labelStyle: TextStyle(
                      color: Colors.cyan[900],
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    )
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[900]),
              onPressed: () {
                Navigator.pushNamed(context, DetailsScreen.routeName,
                arguments: ContactModel(name, email, message));
              },
              child: Text(
                'Submit',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
