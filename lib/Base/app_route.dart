import 'package:get/get.dart';
import '../Home.dart';
import '../Home2.dart';

class AppRoute {
  static const home = '/home';
  static const home2 = '/home2';
  static final routes = [
    GetPage(
      name: home,
      page: () => Home(),
    ),
    GetPage(
      name: home2,
      page: () => Home2(),
    ),
  ];
}
