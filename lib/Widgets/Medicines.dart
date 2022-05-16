import 'package:flutter/material.dart';

class Medicines extends StatelessWidget {
  const Medicines({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                        itemCount: medi.length,
                        itemBuilder: (context, i) {
                          return MedicineCard(
                            avatar: medi[i].avatar,
                            info: medi[i].info,
                            name: medi[i].name,
                            time: medi[i].time,
                          );
                        },
                      ),
  }
}