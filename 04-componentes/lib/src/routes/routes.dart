import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';

Map<String, WidgetBuilder> getRoutAplication() {
  return {
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext conext) => const AlertPage(),
    'avatar': (BuildContext conext) => const AvatarPage()
  };
}
