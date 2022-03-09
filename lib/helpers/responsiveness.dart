import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  //
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  //final Widget? customScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
    /*this.customScreen*/
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= smallScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  /*static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width <= customScreenSize;*/

  @override
  Widget build(BuildContext context) {
    ///
    /// LayoutBuilder is used for responsive designs.
    /// LayoutBuilder widget'ı parent widget'a göre uyumlanarak (parent widget'ı tamamen kaplayarak)
    /// child widget'ların ihtiyaç duyduğu boxContraints parametresini dinamik olarak döndürür.
    ///
    return LayoutBuilder(
      //
      // builder: (BuilderContext context, BoxConstraints constraints)
      builder: (context, constraints) {
        double _width = constraints.maxWidth;

        if (_width >= largeScreenSize) {
          return largeScreen;
        } else if (_width < largeScreenSize && _width >= mediumScreenSize) {
          //
          // it returns true if all expressions are true
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
