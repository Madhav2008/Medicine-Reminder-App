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
  final String avatar;
  final String avatar;

  @override
  State<MedicineCard> createState() => _MedicineCardState();
}

class _MedicineCardState extends State<MedicineCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile();
  }
}
