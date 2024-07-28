import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = 'orange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDown List'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 70,
            color: Colors.deepPurple,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              dropdownColor: Colors.blueGrey,
              value: selectedvalue,
              icon: const Icon(Icons.arrow_circle_down_rounded),
              onChanged: (String? newvalue) {
                setState(() {
                  selectedvalue = newvalue!;
                });
              },
              items: <String>['orange', 'apple', 'banana', 'mango', 'grapes']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
