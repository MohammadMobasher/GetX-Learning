import 'package:get/get.dart';

class Countable {
  // var count = 0.obs;
  var count;
  Countable({this.count = 0});
}

class Countableontroller extends GetxController {
  @override
  void onInit() {
    super.onInit();

    ever(countable.value.count, (_) => print(countable.value.count));

    everAll(countable.value.count, (_) => print(countable.value.count));

    once(countable.value.count, (_) => print(countable.value.count));

    debounce(countable.value.count, (_) => print(countable.value.count),
        time: const Duration(seconds: 1));
  }

  var countable = Countable(count: 0).obs;
  // var countable = Countable();

  void increamentCount() {
    // countable.value.count++;
    countable.update((val) {
      countable.value.count++;
    });
  }

  @override
  void dispose() {
    print("disposed");
  }
}
