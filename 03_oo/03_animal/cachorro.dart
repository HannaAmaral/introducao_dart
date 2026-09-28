import 'animal.dart';
import 'alimento.dart';
import 'brinquedo.dart';
import 'enumA.dart';

class Cachorro extends Animal {
  int fofura;

  List<Brinquedo> brinquedos = [];

  Cachorro(
    String nome,
    double peso,
    Alimento alimento,
    Especie especie,
    this.fofura,
  ) : super(nome, peso, alimento, especie);

  void incluirBrinquedo(Brinquedo brinquedo) {
    brinquedos.add(brinquedo);
  }

  void brincar(Brinquedo brinquedo) {
    print('$nome está brincando com ${brinquedo.nome}');
  }

  @override
  void fazerSom() {
    print('Au Au!!');
  }
}