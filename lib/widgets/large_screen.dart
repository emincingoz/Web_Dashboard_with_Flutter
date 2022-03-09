import 'package:flutter/material.dart';
import 'package:web_dashboard/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: SideMenu(),
        ),
        Expanded(
          // flex is for dynamically changeable layouts
          flex: 9,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
