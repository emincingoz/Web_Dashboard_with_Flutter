import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(
        BuildContext context, GlobalKey<ScaffoldState> scaffoldkey) =>
    AppBar(
      elevation: 0,
      //
      // If screen size is not smallScreen, it will show the logo
      // otherwise, IconButton will be displayed and the drawer will open with the button
      //
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                scaffoldkey.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),

      title: Row(
        children: [
          Visibility(
            //
            // CustomText from custom_text.dart
            child: CustomText(
              text: 'Dashboard',
              size: 20,
              color: lightGrey,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          //
          // dark from style.dart
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                ),
              ),
              //
              // notification üzerindeki mavi nokta
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2),
                    ),
                  )),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          CustomText(text: 'Emin Cingöz', color: lightGrey),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          ),
        ],
      ),

      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
