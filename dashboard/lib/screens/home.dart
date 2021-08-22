import 'package:dashboard/screens/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dashboard/controllers/counterController.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Clicks ${counterController.counter.value}')),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(OtherScreen());
                },
                child: Text('Open Other Screen'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
