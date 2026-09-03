

class Carro extends Object{
  String fabricacao;
  String modelo;
  int anoFabricacao;
  int anoModelo;
  bool temABS;


Carro(
   {
          required   this.modelo,
        required  this.fabricacao,
   this.anoFabricacao = 2012,
   this.anoModelo = 2011,
   this.temABS = true,
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

  @override
  String toString() {
    return retornaDados();
  }
}