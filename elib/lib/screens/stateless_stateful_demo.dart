import 'package:flutter/material.dart';

class DemoCounter extends StatefulWidget {
  const DemoCounter({super.key});

  @override
  State<DemoCounter> createState() => _DemoCounterState();
}

class _DemoCounterState extends State<DemoCounter> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Stateless vs Stateful Demo',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Text(
          'Count: $count',
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: increment,
          child: const Text('Increase'),
        ),
      ],
    );
  }
}
