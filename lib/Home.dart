import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        titleSpacing: 0,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Home Screen"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
