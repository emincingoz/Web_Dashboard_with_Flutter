import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: 'Rides in progress',
          value: '7',
          topColor: Colors.orange,
          onTap: () {},
        ),
        SizedBox(width: _width / 64),
        InfoCard(
          title: 'Packages delivered',
          value: '17',
          topColor: Colors.lightGreen,
          onTap: () {},
        ),
        SizedBox(width: _width / 64),
        InfoCard(
          title: 'Cancelled delivery',
          value: '3',
          topColor: Colors.redAccent,
          onTap: () {},
        ),
        SizedBox(width: _width / 64),
        InfoCard(
          title: 'Scheduled deliveries',
          value: '13',
          topColor: Colors.teal,
          onTap: () {},
        ),
        //SizedBox(width: _width / 64),
      ],
    );
  }
}
