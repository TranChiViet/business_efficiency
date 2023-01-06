import 'package:flutter/material.dart';
import 'package:test_business_efficiency/widgets/top_ten_city.dart';
import 'package:test_business_efficiency/widgets/top_ten_product.dart';

import '../widgets/main_stats.dart';
import '../widgets/report_time.dart';

class BusinessEfficiencyScreen extends StatelessWidget {
  const BusinessEfficiencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hiệu quả kinh doanh'),
        centerTitle: true,
        leading: BackButton(),
      ),
      body: Container(
        
        height: device.height,
        width: device.width,
        // padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ReportTime(),
              SizedBox(height: device.height*0.02),
              MainStats(),
              SizedBox(height: device.height*0.02),
              TopTenProduct(),
              SizedBox(height: device.height*0.02),
              TopTenCity(),
            ],
          ),
        ),
      ),
    );
  }
}
