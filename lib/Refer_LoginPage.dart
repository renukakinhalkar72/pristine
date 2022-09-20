import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Refer_LoginPage extends StatefulWidget {
  const Refer_LoginPage({Key? key}) : super(key: key);

  @override
  State<Refer_LoginPage> createState() => _Refer_LoginPageState();
}

class _Refer_LoginPageState extends State<Refer_LoginPage> {
  TextEditingController uname_ctrl = TextEditingController();
  TextEditingController pwd_ctrl = TextEditingController();
  String uname = '';
  String pwd = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        builder: (BuildContext context, child) => Scaffold(
            // appBar: AppBar(
            //   title: Text('Pristine'),
            // ),
            body: SingleChildScrollView(
          child: Container(
            //width: 332.w,
            //height: 399.h,
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
                        flex: 1,
                        child: Text(
                          'Refer Patients with Easy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Causten',
                            fontSize: 32.sp,
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
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: SizedBox(
                            height: 410.h,
                            width: 332.w,
                            child: Card(
                              //shape: ShapeBorder(),

                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/image 1.png',
                                    height: 111.h,
                                    width: 87.w,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            21.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Login',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Causten',
                                            fontSize: 18.sp,
                                            //  color: Color(0x442948),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      height: 52.h,
                                      width: 290.w,
                                      child: TextFormField(
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          // enabled: !controller.loginProcess.value,
                                          controller: uname_ctrl,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'User Name',
                                              contentPadding:
                                                  EdgeInsets.all(20.0),
                                              //prefixIcon: Icon(Icons.person),
                                              labelStyle:
                                                  TextStyle(fontSize: 20)),
                                          //controller: userNameController,
                                          // validator: (value) => validateUsername(value!),
                                          onChanged: (String value) {
                                            uname = value;
                                          }),
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 52.h,
                                      width: 290.w,
                                      child: TextFormField(

                                          // enabled: !controller.loginProcess.value,
                                          obscureText: true,
                                          obscuringCharacter: '*',
                                          controller: pwd_ctrl,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'Password',
                                              contentPadding:
                                                  EdgeInsets.all(20.0),
                                              //prefixIcon: Icon(Icons.lock),
                                              suffixIcon: Icon(Icons
                                                  .wb_incandescent_outlined),
                                              labelStyle:
                                                  TextStyle(fontSize: 20)),
                                          //controller: userNameController,
                                          // validator: (value) => validateUsername(value!),
                                          onChanged: (String value) {
                                            pwd = value;
                                          }),
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
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
                                  SizedBox(height: 5.h),
                                  Container(
                                    width: 290.w,
                                    height: 52.h,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        print('Button pressed');
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.brown),
                                      ),
                                      child: Ink(
                                        child: Text('LOGIN'),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0x442948),
                                              Color(0x3F1246),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  enroll(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Image(image: AssetImage('images/Rectangle 2.png')),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Builder(builder: (context) {
                          return Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Image(
                                image: AssetImage('images/two doctors.png'),
                                height: 320.h,
                              ),
                              Container(
                                height: 57.h,
                                width: 209.w,
                                //decoration: BoxDecoration(
                                color: Color(0x22083C),
                                //),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'www.pristine.com ',
                                          //textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '(321) 208 7979',
                                          //textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
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
