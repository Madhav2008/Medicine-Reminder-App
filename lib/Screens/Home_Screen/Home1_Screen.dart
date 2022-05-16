import 'package:flutter/material.dart';
import 'package:medicine_reminder_app/Screens/Home_Screen/Home_Screen.dart';
import 'package:medicine_reminder_app/Widgets/Medicines.dart';

class Home1Screen extends StatelessWidget {
  const Home1Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeScreen(),
        Medicines()
      ],
    );
  }
}