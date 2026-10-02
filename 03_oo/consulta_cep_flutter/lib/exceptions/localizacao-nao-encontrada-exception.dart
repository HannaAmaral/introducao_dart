// Implements deve ser utilizado para criar uma herança de uma classe abstract interface
class Localizacaonaoencontradaexception implements Exception{

  @override
  String toString() {
    return "Não foi possivel obter a localização!!!";
  }
}