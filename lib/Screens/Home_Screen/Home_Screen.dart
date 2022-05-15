import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicine_reminder_app/Models/Calendar_Day_Model.dart';
import 'package:medicine_reminder_app/Screens/Add_Medicine_Screen/Add_Medicine_Screen.dart';
import 'dart:async';

import 'package:medicine_reminder_app/Widgets/Calendar.dart';
import 'package:medicine_reminder_app/Widgets/Medicines_List.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _lastChooseDay = 0;
  final dailyPills;
  final CalendarDayModel _days = CalendarDayModel(
    dayLetter: 'Sunday',
    dayNumber: 15,
    isChecked: false,
    year: 2022,
    month: 5,
  );
  late List<CalendarDayModel> _daysList;

  @override
  void initState() {
    super.initState();
    startTime();
    _daysList = _days.getCurrentDays();
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(
      _duration,
      (() => Lottie.network(
            'https://assets10.lottiefiles.com/packages/lf20_awc77jfz.json',
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Widget addButton = FloatingActionButton(
      elevation: 2.0,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => AddMedicineScreen(),
          ),
        );
      },
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 24.0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );

    final double deviceHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      floatingActionButton: addButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color.fromRGBO(
        248,
        248,
        248,
        1,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 0.0,
              left: 25.0,
              right: 25.0,
              bottom: 20.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: deviceHeight * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    alignment: Alignment.topCenter,
                    height: deviceHeight * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Journal",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        ShakeAnimatedWidget(
                          enabled: true,
                          duration: Duration(milliseconds: 2000),
                          curve: Curves.linear,
                          shakeAngle: Rotation.deg(z: 30),
                          child: Icon(
                            Icons.notifications_none,
                            size: 42.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Calendar(chooseDay, _daysList),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                ),
                SizedBox(height: deviceHeight * 0.03),
                FutureBuilder(
                  future: Future.delayed(
                    Duration(
                      seconds: 2,
                    ),
                    () {
                      Lottie.network(
                        'https://assets10.lottiefiles.com/packages/lf20_awc77jfz.json',
                      );
                    },
                  ),
                  builder: (context, index) {
                    return SizedBox(
                      width: double.infinity,
                      // height: 100,
                      child: Column(
                        children: [
                          Lottie.network(
                            'https://assets4.lottiefiles.com/packages/lf20_acxgzi0c.json',
                            width: 200,
                            height: 200,
                          ),
                          WavyAnimatedTextKit(
                            textStyle: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            text: ["Loading..."],
                            isRepeatingAnimation: true,
                            speed: Duration(milliseconds: 150),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                MedicinesList(
                    dailyPills, setData, flutterLocalNotificationsPlugin)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void chooseDay(CalendarDayModel clickedDay) {
    setState(() {
      _lastChooseDay = _daysList.indexOf(clickedDay);
      _daysList.forEach((day) => day.isChecked = false);
      CalendarDayModel chooseDay = _daysList[_daysList.indexOf(clickedDay)];
      chooseDay.isChecked = true;
      // dailyPills.clear();
      // allListOfPills.forEach((pill) {
      // DateTime pillDate =
      //     DateTime.fromMicrosecondsSinceEpoch(pill.time * 1000);
      // if (chooseDay.dayNumber == pillDate.day &&
      //     chooseDay.month == pillDate.month &&
      //     chooseDay.year == pillDate.year) {
      // dailyPills.add(pill);
      //   }
      // });
      // dailyPills.sort((pill1, pill2) => pill1.time.compareTo(pill2.time));
    });
  }
}
