import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/CountableController.dart';
import 'package:get/get.dart';

class Home2 extends GetView<Countableontroller> {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text("count is ${controller.countable.value.count}"),
              ElevatedButton(
                onPressed: () {
                  controller.increamentCount();
                },
                child: const Text("increament"),
              )
            ],
          )),
    );
  }
}
