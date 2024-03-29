import 'package:flutter/material.dart';
import 'package:flutter_application_2/Base/app_route.dart';
import 'package:flutter_application_2/Controller/CountableController.dart';
import 'package:flutter_application_2/Home.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'Base/Translate.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

// class Countable {
//   // var count = 0.obs;
//   var count;

//   Countable({this.count = 0});
// }

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // Countableontroller countableontroller = Get.put(Countableontroller());

  // var countable = Countable(count: 0);
  // var coutableOBS = Countable();
  // final countable = Countable(count: 0).obs;

  // void increment() {
  //   count++;
  //   // countable.value.count++;
  //   countable.update((nct) {
  //     countable.value.count += 1;
  //   });
  // }

  // var count = 0.obs;
  // final iemCount = RxInt(0);
// final itemCount = Rx<int>(0);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoute.routes,
      debugShowCheckedModeBanner: false,
      translations: Translate(),
      locale: const Locale("en", "US"),
      fallbackLocale: const Locale("fa", "PR"),
      title: 'GetView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetView"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Obx(() => Text(
              //       "item count is " +
              //           countableontroller.countable.value.count.toString(),
              //     )),
              ElevatedButton(
                  onPressed: () async {
                    Get.to(AppRoute.home2);

                    // Get.updateLocale(const Locale("fa", "PR"));

                    // Get.toNamed(AppRoute.home);

                    // countableontroller.increamentCount();
                    // increment();

                    // Get.toNamed(AppRoute.home);

                    // Get.to(
                    //   const Home(),
                    //   // for show closing icon on the top of screen
                    //   fullscreenDialog: true,
                    //   transition: Transition.zoom,
                    //   duration: const Duration(milliseconds: 1000),
                    //   // curve: Curves.bounceInOut,
                    // );

                    // Get.off(Home());

                    // Get.offAll(Home());

                    // Get.to(Home(), arguments: "the input to next screen");
                    // var data = await Get.to(const Home(),
                    //     arguments: "the input to next screen");

                    // Get.bottomSheet(
                    //   Container(
                    //     color: Colors.red,
                    //     child: Wrap(
                    //       children: [
                    //         ListTile(
                    //           leading: const Icon(Icons.dark_mode),
                    //           title: const Text("dark mode"),
                    //           onTap: () {
                    //             Get.changeTheme(ThemeData.dark());
                    //             Get.back();
                    //           },
                    //         ),
                    //         ListTile(
                    //           leading: const Icon(Icons.light_mode),
                    //           title: const Text("Light mode"),
                    //           onTap: () {
                    //             Get.changeTheme(ThemeData.light());
                    //             Get.back();
                    //           },
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    //   barrierColor: Colors.grey,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(8),
                    //     side: const BorderSide(
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    //   enableDrag: false,
                    // );

                    // Get.defaultDialog(
                    //   title: "dialog",
                    //   middleText: "middleText",
                    //   radius: 8,
                    //   content: Row(
                    //     children: const [
                    //       CircularProgressIndicator(),
                    //       SizedBox(
                    //         width: 15,
                    //       ),
                    //       Text("mmmm")
                    //     ],
                    //   ),
                    //   textCancel: "cancel",
                    //   cancel: ElevatedButton(
                    //     onPressed: () {},
                    //     child: const Text("Cancel"),
                    //   ),
                    //   cancelTextColor: Colors.red,
                    //   actions: [
                    //     ElevatedButton(
                    //       onPressed: () {},
                    //       child: const Text("new action"),
                    //     )
                    //   ],
                    //   onCancel: () {},
                    //   onConfirm: () {},
                    // );

                    // Get.snackbar("title", "message",
                    //     titleText: const Text("mohammad"),
                    //     messageText: const Text("message text"),
                    //     backgroundColor: Colors.red,
                    //     icon: const Icon(Icons.ac_unit),
                    //     snackPosition: SnackPosition.BOTTOM,
                    //     margin: const EdgeInsets.only(
                    //         bottom: 10, right: 10, left: 10),
                    //     isDismissible: true,
                    //     dismissDirection: DismissDirection.horizontal,
                    //     overlayBlur: 2,
                    //     overlayColor: Colors.grey,
                    //     mainButton: TextButton(
                    //       onPressed: () {},
                    //       child: const Text("retry"),
                    //     ));
                  },
                  child: Text("key".tr)
                  // const Text("new screen"),
                  )
            ],
          ),
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
