import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app_project/Layouts/Home%20Page.dart';

class SuccessfullyVerifiedPage extends StatefulWidget {
  @override
  _SuccessfullyVerifiedPageState createState() =>
      _SuccessfullyVerifiedPageState();
}

class _SuccessfullyVerifiedPageState extends State<SuccessfullyVerifiedPage> {
  static const double borderRadius = 12;
  static const double height = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/verified.gif",
                width: 200,
                height: 200,
              ),
              SizedBox(height: height),
              Text(
                'Successfully Verified',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height),
              Container(
                height: height,
                child: RaisedButton(
                  onPressed: () {
                    Get.to(() => HomePage(),
                      transition: Transition.rightToLeft);
                  },
                  child: Text('Okay', style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(borderRadius))),
                ),
              )
            ],
          ),
        ));
  }
}
