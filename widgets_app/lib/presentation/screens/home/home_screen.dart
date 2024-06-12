

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 static final String name = 'home_screens'; 



  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text('Flutter + Material 2'),),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey:scaffoldKey),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      //physics: BouncingScrollPhysics(),
      itemCount: appMenItem.length,  
      itemBuilder: (context, index) {
        final menuItem = appMenItem[index];
        return _CustomeListTitle(menuItem: menuItem);
      },
      );
  }
}

class _CustomeListTitle extends StatelessWidget {
  const _CustomeListTitle({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
  final colors = Theme.of(context).colorScheme;
    return ListTile(
      title:Text(menuItem.title),
      subtitle: Text(menuItem.sbTitle),
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color:colors.primary,),
      onTap: () {
        // todo: navegar a otras pantallas
        context.push(menuItem.link);
        //Navigator.pushNamed(context, menuItem.link); 
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return  const ButtonScreens();
        //     },
        //     )
        // );
      },
    );
  }
}