import 'package:flutter/cupertino.dart';

class MedicineModel {
  final String name;
  Widget image;
  bool isChoose;
  MedicineType(
    this.name,
    this.image,
    this.isChoose,
  );
}
