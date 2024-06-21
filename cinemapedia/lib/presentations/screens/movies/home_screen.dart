import 'package:cinemapedia/presentations/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.childView});

  static const name = 'home_screen';

  final Widget childView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childView,
      bottomNavigationBar: const CustomeBottomNavigation(),
    );
  }
}
