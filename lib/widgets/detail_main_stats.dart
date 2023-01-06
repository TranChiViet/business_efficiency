import 'package:flutter/material.dart';
import 'package:test_business_efficiency/widgets/card_main_stats.dart';
import 'package:test_business_efficiency/widgets/topic_main_stats.dart';

class DetailMainStats extends StatefulWidget {
  @override
  State<DetailMainStats> createState() => _MainStatsState();
}

class _MainStatsState extends State<DetailMainStats> {
  final titles = [
    'Doanh  số',
    'Đơn hàng',
    'Doanh thu thuần',
    'Lượt xem',
    'Tỉ lệ chuyển đổi',
    'Giá trị đơn hàng trung bình',
    'Đơn hàng hủy',
  ];

  // Widget buildGridView(){
  //   return GridView.builder(
  //       // padding: const EdgeInsets.all(10.0),
  //       itemCount: titles.length,
  //       itemBuilder: (ctx, i) => CardMainStats(
  //         titles[i],
  //       ),
  //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 2,
  //         childAspectRatio: 3 / 2,
  //         crossAxisSpacing: 10,
  //         mainAxisSpacing: 10,
  //       ),
  //     );
  // }
  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;
    return Container(
        height: device.height*0.7,
        width: device.width,
        padding: EdgeInsets.all(10),
        
        child: GridView.builder(
              // padding: const EdgeInsets.all(10.0),
              itemCount: titles.length,
              itemBuilder: (ctx, i) => CardMainStats(
                titles[i],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
        
       
        );
  }
}
