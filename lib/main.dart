import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pristune/Refer_LoginPage.dart';
import 'package:pristune/SplashScreen.dart';
import 'package:get/get.dart';
import 'package:pristune/routes.dart';
import 'package:animated_splash_screen/'
    'animated_splash_screen.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => GetMaterialApp(
        title: 'Pristine',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/Splash',
        getPages: Routes.routes,
      ),
      designSize: const Size(428, 926),
    );
  }
}
