import 'package:flutter/material.dart';

const Color _customeColor = Color(0x000712B6);

const List<Color> _colotThemes = [
  _customeColor,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.black,
  Colors.green,
  Colors.red,
];



class AppTheme{
  final int selectedColor;

  AppTheme({ this.selectedColor = 0 }) : assert(selectedColor >= 0 && selectedColor <= _colotThemes.length -1, 'Limitd of array');

  ThemeData theme(){
    return ThemeData(
      colorSchemeSeed: _colotThemes[selectedColor],
      brightness: Brightness.dark
    );
  }

}