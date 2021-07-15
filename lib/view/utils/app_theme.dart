import 'dart:math';

import 'package:flutter/material.dart';

class AppTheme {
  static final Color healthyColor = Color(0xFF21CD9D);
  static final Color seafoodColor = Color(0xFF217ACD);

  static Color randomPallete() {
    int random = Random().nextInt(6);

    List<Color> listOfColor = [
      Color(0xFFFF9431),
      Color(0xFFFF51AF),
      Color(0xFFFFB951),
      Color(0xFF44AAE3),
      Color(0xFF4DCCA6),
      Color(0xFF6496F6),
      Color(0xFF4DCC5A),
    ];

    return listOfColor[random];
  }
}
