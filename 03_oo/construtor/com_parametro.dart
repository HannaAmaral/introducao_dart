

class Carro{
  String? fabricacao;
  String? modelo;
  int? anoFabricacao;
  int? anoModelo;
  bool? temABS;


Carro(  String fabricacao,
  String modelo,
  int anoFabricacao,
  int anoModelo,
  bool temABS,
):super(){
  this.fabricacao = fabricacao;
  this.modelo = modelo;
  this.anoFabricacao = anoFabricacao;
  this.anoModelo = anoModelo;
  this.temABS = temABS;
}


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