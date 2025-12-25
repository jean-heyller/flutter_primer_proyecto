import 'package:flutter/material.dart';

class CounterFunctionsScrren extends StatefulWidget {
  const CounterFunctionsScrren({super.key});

  @override
  State<CounterFunctionsScrren> createState() => _CounterFunctionsScrrenState();
}

class _CounterFunctionsScrrenState extends State<CounterFunctionsScrren> {
  int counter = 0;

  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            icon: Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${counter == 1 ? '' : 's'}',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Icon(Icons.plus_one),
          ),
          SizedBox(height: 10),
          CustomButoon(icon: Icons.refresh_outlined,onPressed:  () {
            setState(() {
              counter = 0;
            });
          }),
        ],
      ),
    );
  }
}

class CustomButoon extends StatelessWidget {

  final IconData icon;

  final VoidCallback? onPressed;




  const CustomButoon({
    super.key, required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
