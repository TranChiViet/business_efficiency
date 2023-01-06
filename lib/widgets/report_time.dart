

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:test_business_efficiency/widgets/choose_date.dart';


class ReportTime extends StatefulWidget {
  const ReportTime({Key? key}) : super(key: key);

  @override
  State<ReportTime> createState() => _ReportTimeState();
}

class _ReportTimeState extends State<ReportTime> {
  
  Widget buildText(String text){
    return Text(
      text,
      style: TextStyle(fontSize: 12),
    );
  }

  Widget buildTextNavigator(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildText('Vui lòng xem hướng dẫn chi tiết:'),
        TextButton(onPressed: (){}, child: buildText('Giới thiệu trung tâm phát triển'))
      ],
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1), ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextNavigator(),
            Text('Thời gian báo cáo:', style: TextStyle(fontWeight: FontWeight.bold)),
            ChooseDate(),
            Text('(Lần cập nhật cuối: 05/01/2023 - 05/01/2023)'),
          ],
        ),
      ),
    );
  }
}