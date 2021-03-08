import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:school_app_project/Layouts/Successfully%20Verified%20Page.dart';

class OTPVerificationPage extends StatefulWidget {
  @override
  _OTPVerificationPageState createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  static const double borderRadius = 12;
  static const double width = 50;
  static const double height = 50;
  static const double verticalSpace = 20;
  TextStyle textStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              'Verifying your number',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Enter the OTP sent to +919005175380',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: verticalSpace,
            ),
            PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 50,
                selectedColor: Colors.cyan,
                inactiveColor: Colors.blue,
              ),
              keyboardType: TextInputType.number,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              onChanged: (value) {},
              animationDuration: Duration(milliseconds: 300),
              onCompleted: (v) {
                print("Completed");
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Having trouble ? Request a new OTP in 00:50",
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline)),
            ),
            SizedBox(
              height: verticalSpace,
            ),
            Container(
              height: height,
              child: RaisedButton(
                onPressed: () {
                  Get.to(() => SuccessfullyVerifiedPage(),
                      transition: Transition.rightToLeft);
                },
                child: Text('Next', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(borderRadius))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
