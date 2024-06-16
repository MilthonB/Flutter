import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});


  Stream<String> getLoadingMessage(){
    final message = <String>[
      'Cargando peliculas',
      'Comprando palomitas',
      'Cargando populares',
      'Llamando a mi novia',
      'Ya mero',
      'Esto esta tarando mas de lo esperado :(',
    ];
    return Stream.periodic(const Duration(milliseconds: 1200),(step){
        return message[step];
    }).take(message.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere porfavor'),
          const SizedBox(
            height: 10,
          ),
          const CircularProgressIndicator(),
          SizedBox(
            height: 10,
          ),
          StreamBuilder(
            stream: getLoadingMessage(),
            builder: (context, snapshot) {
              if( !snapshot.hasData ) return const Text('Cargando Peliculas...');

              return Text(snapshot.data!);

            },
          )
        ],
      ),
    );
  }
}
