import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:medicine_reminder_app/Screens/Add_Medicine_Screen/Add_Medicine_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //-------------------| Flutter notifications |-------------------
  // final Notifications _notifications = Notifications();
  // FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  //===============================================================

  //--------------------| List of Pills from database |----------------------
  // List<Pill> allListOfPills = List<Pill>();
  // final Repository _repository = Repository();
  // List<Pill> dailyPills = List<Pill>();
  //=========================================================================

  //-----------------| Calendar days |------------------
  // final CalendarDayModel _days = CalendarDayModel();
  // List<CalendarDayModel> _daysList;
  //====================================================

  //handle last choose day index in calendar
  int _lastChooseDay = 0;

  @override
  void initState() {
    super.initState();
    // initNotifies();
    setData();
    // _daysList = _days.getCurrentDays();
  }

  //init notifications
  // Future initNotifies() async => flutterLocalNotificationsPlugin =
  // await _notifications.initNotifies(context);

  //--------------------GET ALL DATA FROM DATABASE---------------------
  Future setData() async {
    // allListOfPills.clear();
    // (await _repository.getAllData("Pills")).forEach((pillMap) {
    //   allListOfPills.add(
    //     Pill().pillMapToObject(pillMap),
    //   );
    // });
    // chooseDay(_daysList[_lastChooseDay]);
  }
  //===================================================================

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
        // await Navigator.pushNamed(context, "/add_new_medicine")
        //     .then((_) => setData());
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
                ),
                SizedBox(height: deviceHeight * 0.03),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: WavyAnimatedTextKit(
                    textStyle: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    text: ["Loading..."],
                    isRepeatingAnimation: true,
                    speed: Duration(milliseconds: 150),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
