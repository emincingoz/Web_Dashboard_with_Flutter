import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

import 'side_menu_item.dart';

// SideMenu must call also from large_screen.dart
class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: Column(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              children: [
                const SizedBox(height: 40),
                Row(children: [
                  SizedBox(width: _width / 80),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset('assets/icons/logo.png'),
                  ),
                  Flexible(
                      child: CustomText(
                    text: 'DashBoard',
                    size: 20,
                    weight: FontWeight.bold,
                    color: active,
                  )),
                ]),
                //const SizedBox(height: 40)
              ],
            ),
          const SizedBox(height: 40),
          Divider(color: lightGrey.withOpacity(.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItemRoutes
                .map((item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                      if (item.route == authenticationPageRoute) {
                        Get.offAllNamed(authenticationPageRoute);
                        menuController
                            .changeActivePageTo(overviewPageDisplayName);
                      }
                      if (!menuController.isActive(item.name)) {
                        menuController.changeActivePageTo(item.name);
                        if (ResponsiveWidget.isSmallScreen(context)) Get.back();
                        navigationController.navigateTo(item.route);
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}
