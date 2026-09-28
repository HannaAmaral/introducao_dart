<<<<<<< HEAD
class Carro extends Object{
  String fabricante;
=======


class Carro extends Object{
  String fabricacao;
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
  String modelo;
  int anoFabricacao;
  int anoModelo;
  bool temABS;

<<<<<<< HEAD
  Carro(
    
    {
      required this.fabricante,
      required this.modelo,
      this.anoFabricacao = 2012,
      this.anoModelo = 2011,
      this.temABS = true
    }
  );

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
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
  }

  @override
  String toString() {
    return retornaDados();
  }
<<<<<<< HEAD

=======
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
}