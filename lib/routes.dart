import 'SplashScreen.dart';
import 'Refer_LoginPage.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/login',
      page: () => const Refer_LoginPage(),
    ),
    GetPage(
      name: '/',
      page: () => const Refer_LoginPage(),
    ),
    GetPage(
      name: '/Splash',
      page: () => SplashScreen(),
    ),
  ];
}
