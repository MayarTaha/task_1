import 'package:flutter/material.dart';
import 'package:internship/contact%20screen/contact_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static const String routeName = 'details';

  @override
  Widget build(BuildContext context) {
    ContactModel model =
        ModalRoute.of(context)!.settings.arguments as ContactModel;
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Contact Details',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name:   ${model.name}',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Email:   ${model.email}',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Message:   ${model.message}',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
