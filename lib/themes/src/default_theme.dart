import 'package:flutter/material.dart';
import 'package:flutter_common_package/config/src/config.dart';

ThemeData getMyDefaultTheme() => ThemeData.light().copyWith(
  primaryColor: myConfig.primaryColor,
  appBarTheme: AppBarTheme(
    elevation: 0,
  ),
);