import 'package:flutter/material.dart';
import 'package:pristune/Classes/History_Class.dart';

typedef VoidCallback = void Function();

class ReferralDetails extends StatelessWidget {
  ReferralDetails(this.refDetails);
  Result refDetails;
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          height: height,
          width: width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      refDetails.patientName!,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      refDetails.appointmentType!,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      refDetails.referrerName!  ,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      refDetails.patientPhoneNumber!,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                ElevatedButton(
                    // color: Colors.red,
                    child: Text("BACK"),
                    onPressed: () {
                      //widget.callback();
                      Navigator.pop(context);
                    }),
              ]),
        )),
      ),
    );
  }
}
