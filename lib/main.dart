// ignore_for_file: prefer_const_constructors

import 'package:budget/pages/indicator_learn.dart';
import 'package:budget/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:budget/pages/dashboard_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        progressIndicatorTheme: ProgressIndicatorThemeData(color: red)),
    //home: DashboardPage(),
    home: IndicatorLearn(),
  ));
}
