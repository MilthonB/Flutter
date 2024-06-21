import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomeBottomNavigation extends StatelessWidget {
  const CustomeBottomNavigation({super.key});

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
        context..go('/');
      break;
      case 1:
        context..go('/');
      break;
      case 2:
        context..go('/favorites');
      break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: getCurrenIndex(context),
      elevation: 0,
      onTap: (value) {
        _onItemTap(context, value);
      },
      items: [
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
