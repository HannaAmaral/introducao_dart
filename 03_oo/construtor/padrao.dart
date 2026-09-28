<<<<<<< HEAD
class Carro{
  String? fabricante;
=======


class Carro{
  String? fabricacao;
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
  String? modelo;
  int? anoFabricacao;
  int? anoModelo;
  bool? temABS;

<<<<<<< HEAD
  void imprimeDados(){
    print(retornaDados());
  }

  String retornaDados(){
    return 
    ''' 
      Fabricante: ${this.fabricante} \n
      modelo: ${this.modelo } \n
      Ano de Fabricacao: ${this.anoFabricacao} \n
      Ano de Modelo: ${this.anoModelo} \n
      Tem ABS: ${(this.temABS!)? "Sim":"Não"}
    ''';
=======

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
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
  }
}