import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquear = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      value: _valorSlider,
      label: 'Tamaño de la imagen',
      divisions: 20,
      min: 10.0,
      max: 400.0,
      onChanged: _bloquear
          ? (valor) {
              setState(() {
                _valorSlider = valor;
              });
            }
          : null,
    );
  }

  _crearImagen() {
    return Image(
      width: _valorSlider,
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://www.pinpng.com/pngs/m/157-1572510_la-expresin-que-todos-queremos-ver-de-goku.png'),
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquear,
    //   onChanged: (valor) {
    //     setState(() {
    //       _bloquear = valor!;
    //     });
    //   },
    // );

    return CheckboxListTile(
      value: _bloquear,
      title: Text('Bloquear Slider '),
      onChanged: (valor) {
        setState(() {
          _bloquear = valor!;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      value: _bloquear,
      title: Text('Bloquear Slider '),
      onChanged: (valor) {
        setState(() {
          _bloquear = valor!;
        });
      },
    );
  }
}
