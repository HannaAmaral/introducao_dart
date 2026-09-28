
import 'Forma.dart';
import 'enum.dart';

<<<<<<< HEAD
class Retangulo extends Forma{
=======
class Retangulo extends Forma {
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1

  double base;
  double altura;

<<<<<<< HEAD
  Retangulo(this.altura, this.base) :super(tpForma.Retangulo);

  @override
  double calculaArea(){
    return base * altura;
  }
  
=======
Retangulo (this.altura, this.base) :super(tpForma.Retangulo);

@override

double calculaArea(){
  
  return altura * base;
  
}
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
}