import 'package:get/get.dart';

class Countable {
  // var count = 0.obs;
  var count;
  Countable({this.count = 0});
}

class Countableontroller extends GetxController {
  var countable = Countable(count: 0).obs;
  // var countable = Countable();

  void increamentCount() {
    // countable.value.count++;
    countable.update((val) {
      countable.value.count++;
    });
  }
}
