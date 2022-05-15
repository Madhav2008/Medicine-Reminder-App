import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:medicine_reminder_app/Widgets/Medicine_Card.dart';

class MedicinesList extends StatelessWidget {
  final List<> listOfMedicines;
  final Function setData;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  MedicinesList(this.listOfMedicines,this.setData,this.flutterLocalNotificationsPlugin);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => MedicineCard(listOfMedicines[index],setData,flutterLocalNotificationsPlugin),
      itemCount: listOfMedicines.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}