import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//Importaciones propias de la app
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      // home: HomePage(),
      initialRoute: '/',
      routes: getRoutAplication(),
      onGenerateRoute: (setting) {
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = [];

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)..add(Divider());
  //   }

  //   return lista;
  // }

  // List<Widget> _crearItemsCortos() {
  //   return opciones.map((item) {
  //     return Column(
  //       children: [
  //         ListTile(
  //           title: Text(item + '!'),
  //           subtitle: Text('Cualquier cosa'),
  //           leading: Icon(Icons.subdirectory_arrow_right_outlined),
  //           trailing: Icon(Icons.architecture_sharp),
  //           onTap: () {},
  //         ),
  //         Divider(),
  //       ],
  //     );
  //   }).toList();
  // }
}
