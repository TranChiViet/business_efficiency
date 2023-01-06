import 'package:flutter/material.dart';

import 'choose_date.dart';

class TopTenProduct extends StatelessWidget {
  const TopTenProduct({Key? key}) : super(key: key);

  // Widget buildTile() {
  //   return ListTile(
  //     leading: const Icon(Icons.production_quantity_limits),
  //     title: Row(
  //       children: [
  //         const Text(
  //           'Top 10 sản phẩm (theo doanh số)',
  //           style: TextStyle(fontWeight: FontWeight.bold),
  //         ),
  //         const Icon(Icons.error_outline),
  //       ],
  //     ),
  //     subtitle: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: [
  //         Text('${ChooseDate}'),
  //         TextButton(
  //             onPressed: () {},
  //             child: Row(
  //               children: [
  //                 const Text(
  //                   'Xem thêm',
  //                   style: TextStyle(
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 20,
  //                   ),
  //                 ),
  //                 const Icon(Icons.keyboard_arrow_right),
  //               ],
  //             ))
  //       ],
  //     ),
  //   );
  // }

  Widget buildTopic() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 80,
              height: 73,
              child: Image.network(
                'https://media.istockphoto.com/id/505604846/photo/golden-top-10-list-3d-icon-isolated.jpg?b=1&s=170667a&w=0&k=20&c=tLGGYdv9Cq7NHSOnFTQigZvfnsnQEEhPvAYCxTMiADI=',
                fit: BoxFit.cover,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(children: [
                const Text(
                  'Top 10 sản phẩm (theo doanh số)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.error_outline),
              ]),
              Text('05/01/2023 - 05/01/2023'),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Text(
                        'Xem thêm',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget buildData() {
    return Column(children: [
      Container(
          width: 160,
          height: 160,
          child: Image.network(
            'https://cdn-icons-png.flaticon.com/512/2456/2456758.png',
            fit: BoxFit.cover,
          )),
      Text('Không có dữ liệu. Hãy chọn thời gian báo cáo khác'),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        children: [
          buildTopic(),
          Divider(),
          buildData()
        ],
      ),
    );
  }
}
