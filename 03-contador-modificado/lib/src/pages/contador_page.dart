import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageSatate createState() => _ContadorPageSatate();
}

class _ContadorPageSatate extends State<ContadorPage> {
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

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
                style: _estiloTexto,
              ),
              Text('$_conteo', style: _estiloTexto),
            ],
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            operaciones(3);
          },
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            operaciones(2);
          },
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            operaciones(1);
          },
        )
      ],
    );
  }

  void operaciones(int opt) {
    switch (opt) {
      case 1:
        _conteo++;
        break;
      case 2:
        _conteo--;
        if (_conteo <= 0) {
          _conteo = 0;
        }
        break;
      case 3:
        _conteo = 0;
        break;
      default:
    }
    setState(() {});
  }
}
