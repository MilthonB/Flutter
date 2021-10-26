
void main(){
   
  final cuadrado = new Cuadrado();
  
  cuadrado.lados = 10;
  print(cuadrado.area);
  
  
}

class Cuadrado{
  
  //Propiedades privadas _
  double _lado=0.0;
  double _area=0.0;
  
  
  set lados(double valor){
    if(valor <= 0){
      throw('El lado no puede ser menor o igual a 0');
    }
    
    
    _lado = valor;
  }
  
 
  
  double get area{
    return  _lado * _lado;
  }
}