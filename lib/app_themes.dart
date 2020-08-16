import 'package:flutter/material.dart';

import 'constant.dart';

enum AppTheme { Default }

final appThemeData = {
  AppTheme.Default: ThemeData(
      indicatorColor: kPrimaryColor,
      scaffoldBackgroundColor: kTransparentColor,
      primaryColor: kPrimaryColor,
      fontFamily: 'Montserrat',
      iconTheme: IconThemeData(color: Colors.white),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: kTextColor.withOpacity(0.4)))),
};
