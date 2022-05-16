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
}

List<MedicineModel> medi = [
  MedicineModel(
    avatar: '../assets/images/syrup.png',
    name: 'Polopiryna',
    info: '10 Syrup',
    time: '17:05',
  ),
  MedicineModel(
    avatar: '../assets/images/capsule.png',
    name: 'Metafen',
    info: '1 Capsule',
    time: '18:00',
  ),
  MedicineModel(
    avatar: '../assets/images/cream.png',
    name: 'Ibuprofen',
    info: '10 Cream',
    time: '18:00',
  ),
  MedicineModel(
    avatar: '../assets/images/cream.png',
    name: 'Ibuprofen',
    info: '10 Cream',
    time: '18:00',
  ),
  MedicineModel(
    avatar: '../assets/images/syringe1.png',
    name: 'IBUM',
    info: '10 syringe',
    time: '19:15',
  ),
  MedicineModel(
    avatar: '../assets/images/capsule.png',
    name: 'Nurofen',
    info: '10 syringe',
    time: '21:00',
  ),
];
