import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hero_app/app_themes.dart';
import 'package:hero_app/common/presentation/home_page.dart';
import 'package:hero_app/common/presentation/router.gr.dart';
import 'package:hero_app/constant.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: 'Hero App',
      builder: ExtendedNavigator.builder<Router>(
        router: Router(),
      ),
      theme: appThemeData[AppTheme.Default].copyWith(
        iconTheme: appThemeData[AppTheme.Default].iconTheme.copyWith(
              color: Colors.white,
            ),
        textTheme: appThemeData[AppTheme.Default].textTheme.apply(
              bodyColor: kTextColor,
              displayColor: kTextColor,
            ),
      ),
      home: HomePage(),
    );
  }
}
