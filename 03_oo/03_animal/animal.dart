import 'alimento.dart';
import 'enumA.dart';

class Animal {
  String nome;
  double peso;

  Alimento? alimento;
  Especie? especie;

  Animal(
    this.nome,
    this.peso, [
    this.alimento,
    this.especie,
  ]);

  void fazerSom() {
    print('$nome fez um som');
  }

  void comer() {
    if (alimento != null) {
      print('$nome está comendo ${alimento!.tipo}');
    } else {
      print('$nome não possui alimento definido');
    }
  }
}