

void main(){
  
  final supertonto = new Heroe();
  supertonto.nombre = 'Clark Kent';
  
  final luthor = new Villano();
  luthor.nombre = 'Lex Luthor';
  
 
}



abstract class Personajes {
  String poder='';
  String nombre='';
}



class Heroe extends Personajes{
  int valentia = 0;
}

class Villano extends Personajes{
  int maldad = 0;
}