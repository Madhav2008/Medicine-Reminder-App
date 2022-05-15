import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicine_reminder_app/Screens/Add_Medicine_Screen/Add_Medicine_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                ),
                SizedBox(height: deviceHeight * 0.03),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Column(
                    children: [
                      Lottie.network(
                        'https://assets4.lottiefiles.com/packages/lf20_acxgzi0c.json',
                        width: 200,
                        width: 200,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
