import 'dart:ui';

import 'package:budget/theme/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<Color> gradientColors = [primary, secondary];

LineChartData activityData() {
  return LineChartData(
    gridData: FlGridData(
      show: false,
      drawVerticalLine: true,
    ),
    titlesData: FlTitlesData(
      show: false,
    ),
    borderData: FlBorderData(show: false),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartData(
        spots: [
          FlSpot(0, 3),
          FlSpot(0, 3),
          FlSpot(0, 3),
          FlSpot(0, 3),
          FlSpot(0, 3),
          FlSpot(0, 3),
          FlSpot(0, 3),
        ],
        isCurved: true,
        color: primary,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
            show: true, gradient: LinearGradient(colors: gradientColors)),
      ),
    ],
  );
}
