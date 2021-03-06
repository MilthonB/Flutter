import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle estiloTexto = new TextStyle(fontSize: 25);
  final int conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número de clicks:',
              style: estiloTexto,
            ),
            Text('$conteo', style: estiloTexto),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('hola mundo');
        },
      ),
    );
  }
}
