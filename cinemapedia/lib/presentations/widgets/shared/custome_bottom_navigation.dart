import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomeBottomNavigation extends StatelessWidget {
  final int currentIndex;
  const CustomeBottomNavigation({super.key, required this.currentIndex});

  int getCurrenIndex(BuildContext context) {
    final String location =  GoRouterState.of(context).matchedLocation;

    switch(location){
      case '/':
        return 0;
      case '/categories':
        return 1;
      case '/favorites':
        return 2;

      default:
        return 0; 
    }
  }

  void _onItemTap( BuildContext context, int index){
    switch( index ){
      case 0:
        context..go('/home/0');
      break;
      case 1:
        context..go('/home/1');
      break;
      case 2:
        context..go('/home/2');
      break;
    }
  }


  // void onItemTap


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      elevation: 0,
      onTap: (value) {
        _onItemTap(context, value);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.label_important_outline),
          label: 'Categorias'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favoritos'
        ),
      ],
    );
  }
}
