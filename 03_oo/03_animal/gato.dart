import 'animal.dart';
import 'alimento.dart';
import 'enumA.dart';

class Gato extends Animal {
  int ronron;

  Gato(
    String nome,
    double peso,
    Alimento alimento,
    Especie especie,
    this.ronron,
  ) : super(nome, peso, alimento, especie);

  void fazerCarinho() {
    print('$nome está pedindo carinho');
  }

  @override
  void fazerSom() {
    print('Meow!!');
  }
}