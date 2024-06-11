
import 'package:flutter/material.dart';

class MenuItems{

  final String title;
  final String sbTitle;
  final String link;
  final IconData  icon;

  const MenuItems({
    required this.title,
    required this.sbTitle,
    required this.link,
    required this.icon,
  });

}


const appMenItem = <MenuItems>[
  MenuItems(
    title: 'Botones',
    icon: Icons.smart_button_outlined,
    sbTitle: 'Varios botones en flutter',
    link: '/buttons'
  ),

  MenuItems(
    title: 'Tarjetas',
    icon: Icons.credit_card,
    sbTitle: 'Un contenedor estilizado',
    link: '/cards'
  )
];

