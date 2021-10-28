import 'package:flutter/material.dart';
import 'package:peliculas/screens/details_screen.dart';
import 'package:peliculas/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Películas App',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomeScreen(),
          'details': (_) => DetailsScreen()
        });
  }
}
