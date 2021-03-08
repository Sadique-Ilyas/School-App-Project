import 'package:flutter/material.dart';
import 'package:school_app_project/Models/Notice Board.dart';
import 'package:get/get.dart';

class NoticeBoardPage extends StatefulWidget {
  @override
  _NoticeBoardPageState createState() => _NoticeBoardPageState();
}

class _NoticeBoardPageState extends State<NoticeBoardPage> {
  static const double borderRadius = 35;
  static const double width = 50;
  static const double height = 50;
  static const double verticalSpace = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Notice Board',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: NoticeBoardList().noticeBoardList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius))),
              child: Container(
                padding: EdgeInsets.all(verticalSpace),
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blueAccent[100], Colors.blue]),
                    borderRadius:
                        BorderRadius.all(Radius.circular(borderRadius))),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          NoticeBoardList().noticeBoardList[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            'Holiday',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: verticalSpace,
                    ),
                    Text(NoticeBoardList().noticeBoardList[index].description,
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Spacer(),
                        Text(NoticeBoardList().noticeBoardList[index].timestamp,
                            style: TextStyle(color: Colors.white))
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
