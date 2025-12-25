import 'package:flutter/material.dart';

class CounterScrren  extends StatefulWidget {


  const CounterScrren ({super.key});

  @override
  State<CounterScrren> createState() => _CounterScrrenState();
}

class _CounterScrrenState extends State<CounterScrren> {

  int counter = 0;

  String text = '';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$counter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
          Text('Click${ counter == 1 ? '': 's'}',style: TextStyle(fontSize: 25),),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {

      setState(() {
        counter++;
      });

    },
    child: Icon( Icons.plus_one),),);
  }
}
