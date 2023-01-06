import 'package:flutter/material.dart';

class ChooseDate extends StatefulWidget {
  

  // static var date;

  // const ChooseDate({Key? key}) : super(key: key);

  @override
  State<ChooseDate> createState() => _ChooseDateState();
}

class _ChooseDateState extends State<ChooseDate> {

  
  final dates = [
    '05/01/2023 - 05/01/2023',
    '06/01/2023 - 06/01/2023',
    '07/01/2023 - 07/01/2023',
  ];
  String? select;
  String? value;

  DropdownMenuItem<String> buildMenuItem(String date) => DropdownMenuItem(
        value: date,
        child: Text(
          date,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;
    return Container(
      // width: device.width*0.7,
      
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Column(
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              
              value: value,
              isExpanded: true,
              iconSize: 30,
              icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
              items: dates.map(buildMenuItem).toList(),
              onChanged: (value) => setState(() {
                this.value = value;
                select = value;
              }),
            ),
          ),
          // Text('Lần cập nhật cuối: ${select!}'),
        ],
      ),

    );
  }
}
