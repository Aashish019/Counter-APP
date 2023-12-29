import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<CounterProvider>().value.toString(),
              style: const TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                context.read<CounterProvider>().incrementCounter();
              }),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                context.read<CounterProvider>().deccrementCounter();
              }),
        ],
      ),
    );
  }
}
