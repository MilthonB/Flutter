void main(){
  
  
  //listas
  
  List<int> numeros = [1,2,3,4,5,6];
  
  numeros.add(500);

  print(numeros);

  List <String> letras = ['d','c','v','b','a'];
  
  letras.add('qqqqq');
  print(letras);
  
  //Litas fijos
  //List masNumeros = new List<int>.filled(10,1);
  List masNumeros = List<int>.filled(10,1);
  
  print(masNumeros);
  
  //masNumeros.add(1) Esto no funciona
  
  masNumeros[0] = 100;
  
  print(masNumeros);
  
  
  
} 