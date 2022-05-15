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

  List<MedicineModel> medicines = [MedicineModel(avatar: avatar, name: name, info: info, time: time,)];
}
