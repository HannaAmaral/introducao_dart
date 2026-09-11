class CepInvalidoException implements Exception{
  
  @override
  String toString() {
    return "Cep inválido, deve ser 8 números, preste atenção na mascara de informação";
  }

}