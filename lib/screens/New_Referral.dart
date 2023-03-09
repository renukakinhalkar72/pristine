import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myaccount extends StatefulWidget {
  const Myaccount({Key? key}) : super(key: key);

  @override
  State<Myaccount> createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 428,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/Rectangle 3.jpg'),
                  ),
                ),
                height: 600,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'New Referral',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                fontFamily: 'Causten'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
