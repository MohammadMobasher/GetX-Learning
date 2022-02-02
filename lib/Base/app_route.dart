import 'package:get/get.dart';
import '../Home.dart';

class AppRoute {
  static const home = '/home';
  static final routes = [
    GetPage(
      name: home,
      page: () => const Home(),
    ),
  ];
}
