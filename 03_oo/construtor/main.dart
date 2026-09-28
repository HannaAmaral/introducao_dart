import 'padrao.dart' as padrao;
import 'com_parametro.dart' as com_parametro;
import 'inicializacao_formal.dart' as inic_formal;
import 'obrigatorio_nomeado.dart' as ob_nomeado;
import 'opcional_nomeado.dart' as op_nomeado;

void main(List<String> args){
<<<<<<< HEAD


  print("Cirando uma instancia de uma classe com construtor padrão");
  final carroGTR = padrao.Carro();
  carroGTR.fabricante = "Nissan";
=======
  print('Criand uma instancia de uma classe com construtor padrao');
  final carroGTR =  padrao.Carro();
  carroGTR.fabricacao = "Nissan";
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
  carroGTR.modelo = "GTR";
  carroGTR.anoFabricacao = 2012;
  carroGTR.anoModelo = 2011;
  carroGTR.temABS = true;
  carroGTR.imprimeDados();


<<<<<<< HEAD

  print("\nCriando uma instancia de uma classe com construtor com parâmetro");
  final carroGTR2 = com_parametro.Carro('Nissan', "GTR", 2012, 2011, true);
  carroGTR2.imprimeDados();

  print("\nCriando uma instancia de uma classe com construtor com inicialização formal");
  final carroGTR3 = inic_formal.Carro('Nissan', "GTR", 2012, 2011, true);
  carroGTR3.imprimeDados();

  print("\nCriando uma instancia de uma classe com construtor com parâmetros nomeados e obrigatorios");
  final carroGTR4 = ob_nomeado.Carro(fabricante: 'Nissan', modelo: 'GTR', anoFabricacao: 2012, anoModelo: 2011, temABS: true);
  carroGTR4.imprimeDados();

  print("\nCriando uma instancia de uma classe com construtor com parâmetros nomeados e opcionais");
  final carroGTR5 = op_nomeado.Carro(fabricante: 'Nissan', modelo: 'GTR', anoModelo: 2012);
  carroGTR5.imprimeDados();

  print('4.5');
  print(carroGTR5);
=======
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

>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
}