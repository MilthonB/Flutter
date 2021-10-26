

void main(){
  
  print('Primera linea');
  httpGet('https://api.tonto/tontos')
    .then( (data) {
      print(data);
    });
  print('Ultima linea');
  
}


Future<String> httpGet(String Url){
  
  return Future.delayed( new Duration(seconds: 4), (){
    return 'Hola mundo';
  });
  
  
}