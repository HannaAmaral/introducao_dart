//implements deve ser utilizado para criar uma herença de uma classe abstract interface
class CepNaoEncontradoException implements Exception{

  @override
  String toString() {
    return "CEP não encontrado!!!";
     }


}