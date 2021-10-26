void main(){
  
  //final = no se pude cambiar nunca, solo sus propidades
  //final es parecido al const 
  final wolverin = new Heroe(nombre:'Logan', poder:'Regeneración');// new ya no es necesario usar
  
  print(wolverin);
  
}


class Heroe{
  
  String nombre;
  String poder;
  
  // Heroe({String nombre='Sin nombre',String poder='Sin poder'}){
  //   this.nombre = nombre;
  //   this.poder = poder;
  // }
  
  // String toString(){
  //   return 'Nombre: ${this.nombre} - Poder: ${this.poder}';
  // }


  Heroe({this.nombre='Sin nombre', this.poder='Sin poder'}); //Constructor 
  
  String toString() => 'Nombre: ${this.nombre} - Poder: ${this.poder}';
  



}