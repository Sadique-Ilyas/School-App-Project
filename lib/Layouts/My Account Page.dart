import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAccountPage extends StatefulWidget {
  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  static const double borderRadius = 12;
  static const double width = 50;
  static const double height = 50;
  static const double verticalSpace = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  shape: BoxShape.circle),
              width: 10,
              height: 10,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {
                  Get.back();
                },
              )),
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'My Account',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 2, bottom: 2),
                      child: Text(
                        'Class VIII A',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(borderRadius))),
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
            Text(
              'General',
              style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Icon(Icons.person_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'About School',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              children: [
                Icon(Icons.info_outline_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'About #school_app_project',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              children: [
                Icon(Icons.info_outline_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Terms & Conditions',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              children: [
                Icon(Icons.info_outline_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Privacy Policy',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              children: [
                Icon(Icons.contact_support_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Support',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              children: [
                Icon(Icons.logout),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Log Out',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            )
          ],
        ),
      ),
    );
  }
}
