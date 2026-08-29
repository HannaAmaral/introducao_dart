import 'enum.dart';

abstract class Forma {

  tpForma tipoForma;

  //declarando o construtor, metodo antigo
  //  Forma(tpForma varforma){
  //  this.tipoForma = varforma}

  Forma(this.tipoForma);

  //declarando um metodo abstrato
  //nao tem corpo
  double calculaArea();

  //declarando um metodo de instancia
  void imprimeForma(){
   // if(tipoForma != null){
   // print("${tipoForma!.name} com área de ${calculaArea()}");
   // }
 print("${tipoForma.name} com área de ${calculaArea()}");
  }

}