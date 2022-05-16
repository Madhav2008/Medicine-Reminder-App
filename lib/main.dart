import 'package:flutter/material.dart';
import 'package:medicine_reminder_app/Screens/Onboarding_Screen/Onboarding_Screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicine Reminder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blueGrey,
        primarySwatch: Color(0xFF07BEC8),
        primarySwatch: Colors.teal.shade400,
      ),
      home: OnboardingScreen(),
    );
  }
}
