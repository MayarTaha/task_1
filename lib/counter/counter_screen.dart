import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);
  static const String routeName = 'Counter';

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int index = 1;
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Counter Screen',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.cyan[900],
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {
                    index--;
                    setState(() {});
                  },
                  icon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.minimize,
                      size: 40,
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 20),
              Text(
                '$index',
                style: TextStyle(
                    color: Colors.cyan[900],
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.cyan[900],
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {
                    index++;
                    setState(() {});
                  },
                  icon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.add,
                      size: 40,
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
