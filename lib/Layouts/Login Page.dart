import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:school_app_project/Layouts/Confirm%20Id%20Page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              'Welcome!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Enter your Registered Number',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: verticalSpace,
            ),
            Row(
              children: [
                Container(
                  height: height,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.all(Radius.circular(borderRadius))),
                  child: CountryCodePicker(
                    onChanged: _onCountryChange,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IN',
                    // favorite: ['IN'],
                    // optional. Shows only country name and flag
                    showCountryOnly: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                    textStyle: textStyle,
                    searchDecoration: InputDecoration(
                      hintText: "Search by Country Code",
                    ),
                  ),
                ),
                Flexible(
                    child: Container(
                  height: height,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: InputBorder.none,
                        hintText: "Phone Number"),
                    keyboardType: TextInputType.number,
                  ),
                )),
              ],
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
                    onPressed: () {},
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(borderRadius))),
                      onPressed: () {
                        Get.to(() => ConfirmIdPage(),
                            transition: Transition.rightToLeft);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next',
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
            )
          ],
        ),
      ),
    );
  }

  void _onCountryChange(CountryCode countryCode) {
    // manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
  }
}
