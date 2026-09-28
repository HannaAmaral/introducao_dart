<<<<<<< HEAD
import 'Forma.dart';
import 'enum.dart';

//Herança/Generalização
//Classe Quadrado herda os membros(Variaveis de instancia e metodos) de Forma
class Quadrado extends Forma{

  double lado;

  //Construtor da classe quadrado 
  //chamndo construtor pai
  Quadrado(this.lado) :super(tpForma.Quadrado);

  //sobrescrever o metodo da classe pai
  @override
  double calculaArea(){
    return lado*lado;
  }
}
=======

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
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
