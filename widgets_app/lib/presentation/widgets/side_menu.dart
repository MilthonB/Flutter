


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  GlobalKey<ScaffoldState> scaffoldKey ;
  SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;


  @override
  Widget build(BuildContext context) {
    final hasNatch = MediaQuery.of(context).viewPadding.top > 35;
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appMenItem[value];
        context.push(menuItem.link);
        widget.scaffoldKey.currentState?.closeDrawer();

      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNatch ? 10 : 30, 16, 10),
          child: Text('Main'),
        ),
        // NavigationDrawerDestination(
        //   icon: Icon(Icons.add), 
        //   label: Text('Home screen')
        // ),
        ...appMenItem
        .sublist(0,3)
        .map((item)  =>  NavigationDrawerDestination(
          icon: Icon(item.icon), 
          label: Text(item.title)
        ),),

        Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Text('More Options'),
        ),
        ...appMenItem
        .sublist(3)
        .map((item)  =>  NavigationDrawerDestination(
          icon: Icon(item.icon), 
          label: Text(item.title)
        ),),
        
      ]
      );
  }
}