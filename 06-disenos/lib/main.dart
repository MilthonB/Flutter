import 'package:flutter/material.dart';

import 'package:disenos/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'basic_design',
      routes: {'basic_design': (_) => BasicDesign()},
    );
  }
}
