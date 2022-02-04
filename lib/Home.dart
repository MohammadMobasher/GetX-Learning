import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/CountableController.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final Countableontroller _countableontroller = Get.put(Countableontroller());

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
            GetX<Countableontroller>(

                // init: Countableontroller(),
                dispose: (_) {
              return _countableontroller.dispose();
            }, builder: (controller) {
              return Text(controller.countable.value.count.toString());
            }),

            ElevatedButton(
              onPressed: () {
                // Get.find<Countableontroller>().increamentCount();
                _countableontroller.increamentCount();
              },
              child: Text("increament".tr),
            )

            //   const Text("Home Screen"),
            //   ElevatedButton(
            //     onPressed: () {
            //       Get.back();
            //     },
            //     child: const Text("Back"),
            //   )
          ],
        ),
      ),
    );
  }
}
