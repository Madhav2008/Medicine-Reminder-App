// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MedicineCard extends StatefulWidget {
  const MedicineCard({
    Key? key,
    required this.avatar,
    required this.name,
    required this.info,
    required this.time,
  }) : super(key: key);

  final String avatar;
  final String name;
  final String info;
  final String time;

  @override
  State<MedicineCard> createState() => _MedicineCardState();
}

class _MedicineCardState extends State<MedicineCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: Image.asset(widget.avatar),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            widget.name,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              letterSpacing: 1,
            ),
          ),
          Text(
            widget.time,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
      subtitle: Text(
        widget.info,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }
}
