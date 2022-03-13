import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/controllers/menu_controller.dart';
import 'package:web_dashboard/controllers/navigation_controller.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/layout.dart';

import 'pages/authentication/authentication.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    // for getx
    return GetMaterialApp(
      initialRoute: authenticationPageRoute,
      //unknownRoute: GetPage(name: 'not-found', page: () => PageNotFound(), trainsition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () => SiteLayout()),
        GetPage(
            name: authenticationPageRoute,
            page: () => const AuthenticationPage()),
        //GetPage(name: overviewPageRoute, page: () => const OverViewPage()),
        //GetPage(name: driversPageRoute, page: () => const DriversPage()),
        //GetPage(name: clientsPageRoute, page: () => const ClientsPage()),
      ],

      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        // light from style.dart
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: Colors.black,
        ),
        // Sayfa geçiş animasyonları için
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
        }),
        primaryColor: Colors.blue,
      ),
      //home: SiteLayout());
      //
      // InitialRout atandığı için kaldırıldı
      //home: const AuthenticationPage(),
    );
  }
}
