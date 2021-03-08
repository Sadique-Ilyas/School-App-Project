import 'package:flutter/material.dart';

class LiveUpdates {
  Icon icon;
  String title;
  String description;
  MaterialColor color;

  LiveUpdates({this.icon, this.title, this.description, this.color});
}

class LiveUpdatesList {
  var updateList = [
    LiveUpdates(
        icon: Icon(
          Icons.calendar_today,
          color: Colors.white,
        ),
        title: "90%",
        description: "Attendance",
        color: Colors.red),
    LiveUpdates(
        icon: Icon(
          Icons.grading_outlined,
          color: Colors.white,
        ),
        title: "B-Grade",
        description: "Progress",
        color: Colors.purple),
    LiveUpdates(
        icon: Icon(
          Icons.money,
          color: Colors.white,
        ),
        title: "No Due",
        description: "Fees",
        color: Colors.orange),
    LiveUpdates(
        icon: Icon(
          Icons.calendar_today,
          color: Colors.white,
        ),
        title: "90%",
        description: "Attendance",
        color: Colors.red),
    LiveUpdates(
        icon: Icon(
          Icons.grading_outlined,
          color: Colors.white,
        ),
        title: "B-Grade",
        description: "Progress",
        color: Colors.purple),
    LiveUpdates(
        icon: Icon(
          Icons.money,
          color: Colors.white,
        ),
        title: "No Due",
        description: "Fees",
        color: Colors.orange),
  ];
}
