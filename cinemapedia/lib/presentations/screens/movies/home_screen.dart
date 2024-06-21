import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/presentations/views/views.dart';
import 'package:cinemapedia/presentations/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key, required this.childView});
  const HomeScreen({super.key, required this.pageIndex});

  final int pageIndex;

  static const name = 'home_screen';

  final viewRoutes = const<Widget>[
    HomeView(),
    SizedBox(),
    FavoritdView(),
  ];

  // final Widget childView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInRight(
        child: IndexedStack(
          index: pageIndex,
          children: viewRoutes,
        ),
      ),
      bottomNavigationBar: CustomeBottomNavigation( currentIndex: pageIndex),
    );
  }
}
