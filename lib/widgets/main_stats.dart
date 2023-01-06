

import 'package:flutter/material.dart';
import 'package:test_business_efficiency/widgets/detail_main_stats.dart';
import 'package:test_business_efficiency/widgets/topic_main_stats.dart';

class MainStats extends StatelessWidget {
  const MainStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
        ),
      child:  
      Column(
          children: [
            TopicMainStats(),
            Divider(),
            DetailMainStats(),
          ],
        ),
    );

  }
}