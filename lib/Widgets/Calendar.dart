// ignore_for_file: file_names, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:medicine_reminder_app/Models/Calendar_Day_Model.dart';
import 'package:medicine_reminder_app/Widgets/Calendar_Day.dart';

class Calendar extends StatefulWidget {
  final Function chooseDay;
  final List<CalendarDayModel> _daysList;
  const Calendar(this.chooseDay, this._daysList);
  
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Container(
      height: deviceHeight * 0.11,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...widget._daysList.map((day) => CalendarDay(day, widget.chooseDay),)
        ],
      ),
    );
  }
}
