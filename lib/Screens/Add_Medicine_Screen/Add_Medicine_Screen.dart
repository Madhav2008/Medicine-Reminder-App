import 'package:flutter/material.dart';

class AddMedicineScreen extends StatefulWidget {
  const AddMedicineScreen({Key? key}) : super(key: key);

  @override
  State<AddMedicineScreen> createState() => _AddMedicineScreenState();
}

class _AddMedicineScreenState extends State<AddMedicineScreen> {
  var _category = [
    'pills',
    'ml',
    'mg',
  ];
  String? _currentItemSelected = 'pills';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Medicine',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Medicine Name',
                labelStyle: TextStyle(color: Colors.grey.shade700),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 0.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 0.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Medicine Amount',
                      labelStyle: TextStyle(color: Colors.grey.shade700),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey.shade700,
                          width: 0.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade700,
                          width: 0.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 305,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      items: _category.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),
                      onChanged: (String? _newValueSelected) {
                        setState(() {
                          _currentItemSelected = _newValueSelected;
                        });
                      },
                      value: _currentItemSelected,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.035,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: FittedBox(
                child: Text(
                  "Medicine form",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ...medicineTypes.map(
                  (type) => MedicineTypeCard(type, medicineTypeClick),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
