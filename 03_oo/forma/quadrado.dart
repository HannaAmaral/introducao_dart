
import 'Forma.dart';
import 'enum.dart';

//Herança
//Quadrado Herda Forma
class Quadrado extends Forma{

  //
  double lado;

  //construtor da classe qadrado
  //Chamando o construtor pai
  Quadrado(this.lado) :super(tpForma.Quadrado);


  //sobrescrever o metodo abstrato da classe pai
  @override
  double calculaArea(){
    
    return lado * lado;
    
    }

}
