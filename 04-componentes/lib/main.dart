import 'package:flutter/material.dart';

//Importaciones propias de la app
import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('ListTile title'),
            ),
            Divider(),
            ListTile(
              title: Text('ListTile title'),
            ),
            Divider(),
            ListTile(
              title: Text('ListTile title'),
            )
          ],
        ),
      ),
    );
  }
}
