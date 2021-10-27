import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: _crearCards(),
    );
  }

  Widget _crearCards() {
    return Card(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo,
              color: Colors.blue,
            ),
            title: Text('Hola soy el titulo de la card'),
            subtitle: Text(
                'Hola yo soy el sub del titulo agregado anteriormente, puedes continuar usando la app y jugar con los componentes'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }
}
