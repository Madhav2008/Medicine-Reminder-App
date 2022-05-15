import 'package:flutter/cupertino.dart';

class MedicineModel {
  final String avatar;
  final String name;
  final String info;
  final String time;

  MedicineModel({
    required this.avatar,
    required this.name,
    required this.info,
    required this.time,
  });

  List<MedicineModel> medicines = [
    MedicineModel(
      avatar: '../assets/images/',
      name: name,
      info: info,
      time: time,
    ),
    MedicineModel(
      avatar: '../assets/images/capsule.png',
      name: 'Metafen',
      info: '1 Capsule',
      time: '18:00',
    ),
  ];
}
