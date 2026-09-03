

class Carro{
  String? fabricacao;
  String? modelo;
  int? anoFabricacao;
  int? anoModelo;
  bool? temABS;


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