import 'package:flutter/material.dart';
import 'package:peliculas/screens/screen.dart';

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
        'details': (_) => DetailsScreen(),
      },
      theme: ThemeData.dark(),
      // theme: ThemeData.light().copyWith(
      //   appBarTheme: AppBarTheme(
      //     color: Colors.indigo
      //   )
      // ),
    );
  }
}
