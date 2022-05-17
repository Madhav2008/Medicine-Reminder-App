// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medicine_reminder_app/Models/Medicine_Model.dart';
import 'package:medicine_reminder_app/Widgets/Medicine_Card.dart';

class Medicines extends StatelessWidget {
  const Medicines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: medi.length,
      itemBuilder: (context, i) {
        return Column(
          children: <Widget>[
            ListTile(
              tileColor: Colors.white,
              leading: Image.asset(medi[i].avatar),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    medi[i].name,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    medi[i].time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                medi[i].info,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        );
        // return MedicineCard(
        //   avatar: medi[i].avatar,
        //   info: medi[i].info,
        //   name: medi[i].name,
        //   time: medi[i].time,
        // );
      },
    );
  }
}
