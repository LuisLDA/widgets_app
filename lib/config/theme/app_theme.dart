import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.purple,
  Colors.pink,
  Colors.orange,
  Colors.yellow
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < colorList.length,
            'Selected color must be granter then 0 and less to ${colorList.length}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ));
}
