import 'padrao.dart' as padrao;
import 'com_parametro.dart' as com_parametro;
import 'inicializacao_formal.dart' as inic_formal;
import 'obrigatorio_nomeado.dart' as ob_nomeado;
import 'opcional_nomeado.dart' as op_nomeado;

void main(List<String> args){
  print('Criand uma instancia de uma classe com construtor padrao');
  final carroGTR =  padrao.Carro();
  carroGTR.fabricacao = "Nissan";
  carroGTR.modelo = "GTR";
  carroGTR.anoFabricacao = 2012;
  carroGTR.anoModelo = 2011;
  carroGTR.temABS = true;
  carroGTR.imprimeDados();


  print('1');
  final carroGTR1 = com_parametro.Carro('Nissan','GTR',2012,2011,true);
  carroGTR1.imprimeDados();

    print('2');
  final carroGTR2 = inic_formal.Carro('Nissan','GTR',2012,2011,true);
  carroGTR1.imprimeDados();

    print('3');
  final carroGTR3 = ob_nomeado.Carro(temABS:true,
                                     modelo: 'GTR',
                                    fabricacao: 'Nissan',
                                    anoModelo: 2011,
                                    anoFabricacao: 2012);
  carroGTR1.imprimeDados();


      print('4');
  final carroGTR4 = op_nomeado.Carro(fabricacao: 'nissan', modelo: 'GTR', anoModelo: 2012);
  carroGTR1.imprimeDados();

  print('4.5');
  print(carroGTR4);

}