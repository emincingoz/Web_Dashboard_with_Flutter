import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_cards_small.dart';
import 'package:web_dashboard/pages/overview/widgets/revenue_section_large.dart';
import 'package:web_dashboard/pages/overview/widgets/revenue_section_small.dart';

import '../../widgets/custom_text.dart';
import 'widgets/overview_cards_large.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  color: dark,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomScreen(context))
                  const OverviewCardsMediumScreen()
                else
                  const OverviewCardsLargeScreen()
              else
                const OverviewCardsSmallScreen(),
              //
              if (ResponsiveWidget.isSmallScreen(context))
                const RevenueSectionSmall()
              else
                const RevenueSectionLarge()
            ],
          ),
        ),
      ],
    );
  }
}
