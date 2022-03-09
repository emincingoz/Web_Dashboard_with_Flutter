import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/info_card_small.dart';

import 'info_card.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: '7',
            topColor: Colors.orange,
            onTap: () {},
          ),
          const SizedBox(height: 10),
          //SizedBox(width: _width / 64),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '17',
            topColor: Colors.lightGreen,
            onTap: () {},
          ),
          const SizedBox(height: 10),
          //SizedBox(width: _width / 64),
          InfoCardSmall(
            title: 'Cancelled delivery',
            value: '3',
            topColor: Colors.redAccent,
            onTap: () {},
          ),
          const SizedBox(height: 10),
          //SizedBox(width: _width / 64),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '13',
            topColor: Colors.teal,
            onTap: () {},
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
