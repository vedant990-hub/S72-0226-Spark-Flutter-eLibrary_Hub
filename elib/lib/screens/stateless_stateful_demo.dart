import 'package:flutter/material.dart';

class StatelessStatefulDemo extends StatelessWidget {
  const StatelessStatefulDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless vs Stateful Demo'),
      ),
      body: const Center(
        child: DemoBody(),
      ),
    );
  }
}

/// Stateless Widget – Static UI
class DemoHeader extends StatelessWidget {
  const DemoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Interactive Counter App',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

/// Stateful Widget – Dynamic UI
class DemoBody extends StatefulWidget {
  const DemoBody({super.key});

  @override
  State<DemoBody> createState() => _DemoBodyState();
}

class _DemoBodyState extends State<DemoBody> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const DemoHeader(),
        const SizedBox(height: 20),
        Text(
          'Count: $count',
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: incrementCounter,
          child: const Text('Increase'),
        ),
      ],
    );
  }
}
