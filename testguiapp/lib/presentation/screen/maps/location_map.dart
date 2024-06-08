import 'package:flutter/material.dart';

class LocationMap extends StatefulWidget {
  const LocationMap({super.key});

  @override
  State<LocationMap> createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 63, 81),
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed:(){
            Navigator.of(context).pop();
          } ,
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          actions: [
            IconButton(
              onPressed: (){

              }, 
              icon: Icon(Icons.map_outlined)
              )
          ],
          title: Text('Mapa'),
          centerTitle: true,
      ),
      body: Center(
        child: Text('Aqui va el mapa'),
      ),
    );
  }
}