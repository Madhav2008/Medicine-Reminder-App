// ignore_for_file: file_names, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:medicine_reminder_app/Models/Medicine_Type.dart';

class MedicineTypeCard extends StatelessWidget {
  final MedicineType pillType;
  final Function handler;
  const MedicineTypeCard(
    this.pillType,
    this.handler,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => handler(pillType),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: pillType.isChoose
                  ? const Color.fromRGBO(7, 190, 200, 1)
                  : Colors.white,
            ),
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 50,
                  height: 50.0,
                  child: pillType.image,
                ),
                const SizedBox(
                  height: 7.0,
                ),
                Container(
                    child: Text(
                  pillType.name,
                  style: TextStyle(
                      color: pillType.isChoose ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 15.0,
        )
      ],
    );
  }
}
