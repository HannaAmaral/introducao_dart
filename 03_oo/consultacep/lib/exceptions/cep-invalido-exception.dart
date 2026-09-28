class CepInvalidoException implements Exception{
<<<<<<< HEAD

  // final String mensagem;
  // CepInvalidoException(this.mensagem);

  @override
  String toString() {
    return "CEP inválido, deve possuir 8 números.";
  }
=======
  
  @override
  String toString() {
    return "Cep inválido, deve ser 8 números, preste atenção na mascara de informação";
  }

>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
}