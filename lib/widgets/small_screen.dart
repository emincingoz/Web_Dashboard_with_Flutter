import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //
      // This will expand the widget in every direction (x and y axis) to the constraints of its parent.
      // it is used for responsiveness of the widget
      constraints: const BoxConstraints.expand(),
      color: Colors.green,
    );
  }
}
