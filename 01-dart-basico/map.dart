void main(){
  
  String propiedad = 'soltero';
  
  Map<String, dynamic> persona  = {
    'nombre': 'Samarripa',
    'edad'  : 32,
    'soltero': false
  };
  
  print(persona['nombre']);
  print(persona['edad']);
  print(persona[propiedad]);
  
  Map<int, String> personas = {
   1:'Lopez',
   2:'Samarripa',
   3:'Lorenzo'
  };
  
  personas.addAll({4:'Primitivo'});
  
  print(personas);
  print(personas[2]);
} 