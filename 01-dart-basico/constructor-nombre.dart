import 'dart:convert';
void main(){
  
  
  final rawJson  = '{"nombre":"Logan", "poder":"Regeneración"}';
  Map parseJson = json.decode(rawJson);

  final wolverin = new Heroe.fromJson(parseJson);
  
  print(wolverin.nombre);
  print(wolverin.poder);
  
}

class Heroe{
  String poder = '';
  String nombre= '';
  
  Heroe(this.nombre,this.poder);
  
  //Constructor con nombre 
  Heroe.fromJson(Map parseJson ){
    nombre = parseJson['nombre'];
    poder = parseJson['poder'];
  }
}