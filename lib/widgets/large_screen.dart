import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/local_navigator.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
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
          child: Padding(
            padding: ResponsiveWidget.isCustomScreen(context)
                ? const EdgeInsets.only(left: 45, right: 16)
                : const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          ),
        ),
      ],
    );
  }
}
