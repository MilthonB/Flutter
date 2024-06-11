
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
  ),
  MenuItems(
    title: 'ProgressIndicators',
    icon: Icons.refresh_rounded,  
    sbTitle: 'Generales y controlados',
    link: '/progress'
  ),
  MenuItems(
    title: 'SnackBars y dialogos',
    icon: Icons.info_outline,  
    sbTitle: 'Inficadores en pantalla',
    link: '/snackbar'
  ),
  MenuItems(
    title: 'Animated Container',
    icon: Icons.check_box_outline_blank_rounded,  
    sbTitle: 'Stateful widget animado',
    link: '/animated'
  ),
  MenuItems(
    title: 'UI Controls + Tiles',
    icon: Icons.car_rental_outlined,  
    sbTitle: 'Una serie de controles de Flutter',
    link: '/uicontrols'
  ),
  MenuItems(
    title: 'Introduccion a la aplicacion',
    icon: Icons.accessibility_new_rounded,  
    sbTitle: 'Pequenio tuurotial introductorio',
    link: '/tutorial'
  ),
  
];

