

void main() async {
  
  print('Primera linea');
  String data = await httpGet('https://api.tonto/tontos');
  print(data);
  print('Ultima linea');
  
}


Future<String> httpGet(String Url){
  
  return Future.delayed( new Duration(seconds: 4), (){
    return 'Hola mundo';
  });
  
  
}