import 'package:flutter/material.dart';

//Importaciones propias de la app
import 'package:componentes/src/pages/home_page.dart';
// import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      home: HomePage(),
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
