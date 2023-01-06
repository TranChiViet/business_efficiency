import 'package:flutter/material.dart';

class TopicMainStats extends StatelessWidget {
  const TopicMainStats({Key? key}) : super(key: key);

  Widget buildButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left)),
        Text('Xem biểu đồ'),
        IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right)),
      ],
    );
  }

  Widget buildTopic() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Chỉ số chính',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hôm nay: 05/01/2023 - 05/01/2023'),
              Text('(So sánh với: 04/01/2023 - 04/01/2023)'),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          buildTopic(),
          buildButton(),
        ],
      ),
    );
  }
}
