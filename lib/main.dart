import 'package:flutter/material.dart';
import 'package:internship/counter/counter_screen.dart';

import 'contact screen/contact_screen.dart';
import 'contact screen/details_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: CounterScreen.routeName,
        routes: {
          CounterScreen.routeName: (context) => CounterScreen(),
          ContactScreen.routeName: (context) => ContactScreen(),
          DetailsScreen.routeName: (context) => DetailsScreen(),

        });
  }
}
