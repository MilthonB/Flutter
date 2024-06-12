
import 'package:flutter/material.dart';


const colorList = <Color>[
  Colors.blue,
  Colors.green,
  Colors.teal,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,

];



class AppTheme {

  final int selectedColor;

  final isDarkMode; 

  AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = false
  }): assert( selectedColor >= 0, 'El color seleccionado debe ser mayo a 0 ' ),
      assert( selectedColor < colorList.length, ' El color tiene que ser meno o igual a ${colorList.length}' );

  ThemeData getTheme()  => ThemeData(  
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: AppBarTheme(
        centerTitle: true
      )
  );

}



