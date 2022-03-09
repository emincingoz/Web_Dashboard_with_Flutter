import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';

import '../../widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomText(
      text: 'OverView',
      color: dark,
    ));
  }
}
