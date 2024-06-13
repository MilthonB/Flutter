
import 'package:flutter/material.dart';

class AppTheme{

    ThemeData geTheme() => ThemeData(
      colorSchemeSeed:Colors.blue, 
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white
      )
    );
}