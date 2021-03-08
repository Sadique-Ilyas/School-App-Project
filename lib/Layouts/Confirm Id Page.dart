import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app_project/Layouts/OTP%20Verification%20Page.dart';

class ConfirmIdPage extends StatefulWidget {
  @override
  _ConfirmIdPageState createState() => _ConfirmIdPageState();
}

class _ConfirmIdPageState extends State<ConfirmIdPage> {
  static const double borderRadius = 12;
  static const double width = 50;
  static const double height = 50;
  static const double verticalSpace = 20;
  TextStyle textStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.all(Radius.circular(borderRadius))),
              ),
              SizedBox(
                height: verticalSpace,
              ),
              Text(
                'Choose the account',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Confirm your ID',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: verticalSpace,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(borderRadius))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 40,
                      ),
                      SizedBox(
                        width: verticalSpace,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pratibha Yadav',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 2, bottom: 2),
                            child: Text(
                              'Class VIII A',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(borderRadius))),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              shape: BoxShape.circle),
                          child: Icon(Icons.keyboard_arrow_down_rounded))
                    ],
                  ),
                ),
              ),
              Spacer(),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text:
                        'By continuing, you agree to the #school_app_project ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: "Terms of Service",
                          style: TextStyle(color: Colors.blue)),
                      TextSpan(text: " & "),
                      TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(color: Colors.blue)),
                    ]),
              ),
              SizedBox(
                height: verticalSpace,
              ),
              Row(
                children: [
                  Container(
                    height: height,
                    child: RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(borderRadius))),
                      onPressed: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: verticalSpace,
                  ),
                  Flexible(
                    child: Container(
                      height: height,
                      child: RaisedButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(borderRadius))),
                        onPressed: () {
                          Get.to(() => OTPVerificationPage(),
                              transition: Transition.rightToLeft);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Accept & Continue',
                              style: textStyle,
                            ),
                            SizedBox(
                              width: verticalSpace,
                            ),
                            Icon(
                              Icons.arrow_right_alt_rounded,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
