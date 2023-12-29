import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class HomePage extends StatelessWidget {
  final CounterController getcount = Get.put(CounterController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App GetX"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${getcount.value}",
                style: const TextStyle(fontSize: 35),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                getcount.increment();
              }),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                getcount.decrement();
              }),
        ],
      ),
    );
  }
}
