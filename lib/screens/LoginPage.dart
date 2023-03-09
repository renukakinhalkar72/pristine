import 'dart:convert';

import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pristune/Classes/Login_User.dart';
import 'package:pristune/screens/Navigation_bar.dart';

import '../Classes/LocalStorage.dart';

class Refer_LoginPage extends StatefulWidget {
  const Refer_LoginPage({Key? key}) : super(key: key);

  @override
  State<Refer_LoginPage> createState() => _Refer_LoginPageState();
}

class _Refer_LoginPageState extends State<Refer_LoginPage> {
  TextEditingController uname_ctrl = TextEditingController();
  TextEditingController pwd_ctrl = TextEditingController();
  var uid;

  String uname = '';
  String pwd = '';

  login() async {
    final baseloginurl =
        'https://pristine-sandbox.viandd.com' + "/api/v1/user/login";
    uid = LocalStorage.getid();
    final obj = Dio();
    var headers = {
      "userName": uname_ctrl.text,
      "password": pwd_ctrl.text,
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };

    try {
      dio.Response loginvalue =
          await obj.get(baseloginurl, options: Options(headers: headers));

      print(loginvalue);

      if (loginvalue.statusCode == 200) {
        // var decoded = jsonDecode(loginvalue.data);
        Login_User newUser = new Login_User.fromJson(loginvalue.data);
        LocalStorage.setid(newUser.result!.id!);
        Get.toNamed("/Navigation");
      } else {}
    } on DioError catch (e) {
      print("error is ${e.response?.data}");
      final error = e.response?.data["error"];
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: Text(error ?? ""),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("OK")),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //bottomNavigationBar: Navigation_Bar(),
          body: SingleChildScrollView(
        child: Container(
          height: 600,
          width: 428,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/Rectangle 3-1.jpg'),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Refer Patients with Easy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Causten',
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 48, right: 48),
                        height: 440,
                        width: 332,
                        child: Card(
                          //shape: ShapeBorder(),

                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/image 1.png',
                                height: 111,
                                width: 87,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 21.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Login',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Causten',
                                          fontSize: 18,
                                          //  color: Color(0x442948),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(21, 15, 21, 8),
                                height: 52,
                                width: 290,
                                child: TextFormField(
                                    keyboardType: TextInputType.visiblePassword,
                                    // enabled: !controller.loginProcess.value,
                                    controller: uname_ctrl,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'User Name',
                                        contentPadding: EdgeInsets.all(20.0),
                                        //prefixIcon: Icon(Icons.person),
                                        labelStyle: TextStyle(fontSize: 20)),
                                    //controller: userNameController,
                                    // validator: (value) => validateUsername(value!),
                                    onChanged: (String value) {
                                      uname = uname_ctrl.text;
                                    }),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(21, 0, 21, 8),
                                height: 52,
                                width: 290,
                                child: TextFormField(

                                    // enabled: !controller.loginProcess.value,
                                    obscureText: true,
                                    obscuringCharacter: '*',
                                    controller: pwd_ctrl,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Password',
                                        contentPadding: EdgeInsets.all(20.0),
                                        //prefixIcon: Icon(Icons.lock),
                                        suffixIcon: Icon(Icons.visibility_off),
                                        labelStyle: TextStyle(fontSize: 20)),
                                    //controller: userNameController,
                                    // validator: (value) => validateUsername(value!),
                                    onChanged: (String value) {
                                      pwd = pwd_ctrl.text;
                                    }),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 21),
                                    child: Text(
                                      'Forgot password?',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        // MaterialStateProperty.all<Color>(Colors.blue),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          20, 0, 21, 8),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xff442948),
                                            Color(0xff3F1246),
                                          ]),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            onSurface: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                            //make color or elevated button transparent
                                          ),
                                          child: Text(
                                            'LOGIN',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              fontFamily: 'Causten',
                                            ),
                                          ),
                                          onPressed: () {
                                            login();
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              enroll(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

Widget enroll() => RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'New to Pristine? ',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: 'Call us to enroll',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
