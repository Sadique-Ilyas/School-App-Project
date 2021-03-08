import 'package:flutter/material.dart';
import 'package:school_app_project/Layouts/My%20Account%20Page.dart';
import 'package:school_app_project/Models/Live%20Updates.dart';
import 'package:school_app_project/Models/Homework.dart';
import 'package:school_app_project/Layouts/Notice Board Page.dart';
import 'package:get/get.dart';

class HomePageWidgets {
  static const double borderRadius = 20;
  static const double horizontalSpace = 20;
  TextStyle textStyle = TextStyle(color: Colors.white);
  TextStyle boldTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  //Horizontal ListView
  Widget horizontalListView() {
    List<LiveUpdates> updateList = LiveUpdatesList().updateList;
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          color: updateList[index].color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          elevation: 2,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                updateList[index].icon,
                Text(
                  updateList[index].title,
                  style: boldTextStyle,
                ),
                Text(
                  updateList[index].description,
                  style: textStyle,
                )
              ],
            ),
          ),
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: updateList.length,
    );
  }

  // Vertical ListView
  List<Homework> _homeworkList = HomeworkList().homeworkList;
  bool value = false;
  Widget listView() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Card(
          elevation: 1,
          color: Colors.blueGrey[100],
          child: ListTile(
            leading: Checkbox(
              value: value,
              onChanged: (bool value) {
                this.value = value;
              },
            ),
            title: Text(_homeworkList[index].title),
            subtitle: Text(_homeworkList[index].description),
          ),
        );
      },
      itemCount: _homeworkList.length,
    );
  }

  // Bottom Naivagation
  Widget bottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(borderRadius + 50))),
            elevation: 2,
            child: Container(
              padding:
                  EdgeInsets.only(top: 12, bottom: 12, left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius + 50))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 2,
                        width: 10,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  SizedBox(
                    width: horizontalSpace,
                  ),
                  InkWell(
                      onTap: () {
                        print("======================");
                        print("=====TAPPED===========");
                        print("======================");
                      },
                      child: Icon(Icons.search)),
                  SizedBox(
                    width: horizontalSpace,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => NoticeBoardPage(),
                            transition: Transition.rightToLeft);
                      },
                      child: Icon(Icons.notifications_outlined)),
                  SizedBox(
                    width: horizontalSpace,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => MyAccountPage(),
                            transition: Transition.rightToLeft);
                      },
                      child: Icon(Icons.person_outline))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
