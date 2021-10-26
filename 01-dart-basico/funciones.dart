void main(){
 
  
  String rSaludar = saludar(texto:"Hola", nombre:'Samarripa');
  String flechaSaludar = saludarFlecha('Hola', 'Primitivo');
  
  print('Saludar normal: $rSaludar');
  print('Saludar flecha: $flechaSaludar');
  
  
} 


String saludarFlecha(texto, nombre) => '$texto $nombre';

String saludar({String texto='', String nombre=''}) { //Funcion con parametros con nombre para identificación
  return '$texto $nombre';
}
