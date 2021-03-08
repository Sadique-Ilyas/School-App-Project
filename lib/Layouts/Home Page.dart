import 'package:flutter/material.dart';
import 'package:school_app_project/Widgets/Home%20Page%20Widgets.dart';
import 'package:school_app_project/Models/Homework.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const double borderRadius = 35;
  static const double width = 50;
  static const double height = 50;
  static const double verticalSpace = 20;
  TextStyle textStyle = TextStyle(color: Colors.white);
  TextStyle boldTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  List<Homework> _homeworkList = HomeworkList().homeworkList;
  bool value = false;

  Future<Null> _selectedDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: selectedDate.subtract(Duration(days: 30)),
        lastDate: DateTime(selectedDate.year + 1));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: IconButton(
                              icon: Icon(
                                Icons.calendar_today_rounded,
                                color: Colors.blueGrey,
                              ),
                              onPressed: () => _selectedDate(context),
                            )),
                        SizedBox(
                          width: verticalSpace,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Monday'),
                            Text(
                              '25 October',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.account_circle,
                          size: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
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
                            borderRadius: BorderRadius.all(
                                Radius.circular(borderRadius))),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Holi Holiday',
                                  style: boldTextStyle,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    'Holiday',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: verticalSpace,
                            ),
                            Text(
                              'Activate every muscle group to get the results you\'ve always waited',
                              textAlign: TextAlign.start,
                              style: textStyle,
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  '15th March 2021',
                                  style: boldTextStyle,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: verticalSpace,
                    ),
                    Text('Live Updates'),
                    SizedBox(
                      height: verticalSpace,
                    ),
                    Container(
                        height: 120,
                        child: HomePageWidgets().horizontalListView()),
                    SizedBox(
                      height: verticalSpace,
                    ),
                    Text('Homework'),
                    ListView.builder(
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
                                setState(() {
                                  this.value = value;
                                });
                              },
                            ),
                            title: Text(_homeworkList[index].title),
                            subtitle: Text(_homeworkList[index].description),
                          ),
                        );
                      },
                      itemCount: _homeworkList.length,
                    )
                  ],
                ),
              ),
            ),
            HomePageWidgets().bottomNavigation()
          ],
        ),
      ),
    );
  }
}
