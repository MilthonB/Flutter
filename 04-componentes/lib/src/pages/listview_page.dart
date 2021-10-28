import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumeros = [];

  ScrollController _scroll = new ScrollController();
  int _ultimovalor = 0;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _cargar10();

    _scroll.addListener(() {
      if (_scroll.position.pixels == _scroll.position.maxScrollExtent) {
        // _cargar10();
        _fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoding(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: _obtenerPagina1,
      child: ListView.builder(
        controller: _scroll,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final numero = _listaNumeros[index];
          return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image:
                  NetworkImage('https://picsum.photos/500/300?random=$numero'));
        },
      ),
    );
  }

  void _cargar10() {
    for (var i = 0; i < 10; i++) {
      _ultimovalor++;
      _listaNumeros.add(_ultimovalor);
    }

    setState(() {});
  }

  Future _fetchData() async {
    isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    return new Timer(duration, httpResponse);
  }

  httpResponse() {
    isLoading = false;

    _scroll.animateTo(
      _scroll.position.pixels + 100,
      duration: new Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
    );
    _cargar10();
  }

  Widget _crearLoding() {
    if (isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 30.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  Future<void> _obtenerPagina1() {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listaNumeros.clear();
      _ultimovalor++;
      _cargar10();
    });

    return Future.delayed(duration);
  }
}
