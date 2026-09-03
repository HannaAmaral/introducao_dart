

class Carro{
  String fabricacao;
  String modelo;
  int anoFabricacao;
  int anoModelo;
  bool temABS;


Carro( {
  required this.fabricacao,
  required this.modelo,
  required this.anoFabricacao,
  required this.anoModelo,
  required this.temABS,
});


  void imprimeDados(){
    print(retornaDados());
  } 

  String retornaDados(){
    return '''
                Fabricante: ${this.fabricacao}\n
                Modelo: ${this.modelo}\n
                Ano de Fabricação: ${this.anoFabricacao}\n
                Ano do Modelo: ${this.anoModelo}\n
                Tem ABS: ${(this.temABS!)? "Sim":"Não"}

           ''';
  }
}