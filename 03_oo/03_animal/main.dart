import 'alimento.dart';
import 'animal.dart';
import 'brinquedo.dart';
import 'cachorro.dart';
import 'gato.dart';
import 'enumA.dart';
import 'tratamento.dart';
import 'veterinario.dart';

void main() {
  // 1. Criar objetos Alimento
  Alimento racaoCachorro = Alimento('Ração de cachorro');
  Alimento racaoGato = Alimento('Ração de gato');

  // 2. Criar objetos Cachorro e Gato
  Cachorro cachorro = Cachorro(
    'Thor',
    20.5,
    racaoCachorro,
    Especie.mamifero,
    10,
  );

  Gato gato = Gato(
    'Mimi',
    5.0,
    racaoGato,
    Especie.mamifero,
    8,
  );

  // 3. Os alimentos já foram associados pelo construtor

  // 4. Criar brinquedos
  Brinquedo bola = Brinquedo('Bola');
  Brinquedo osso = Brinquedo('Osso');

  // Adicionar brinquedos ao cachorro
  cachorro.incluirBrinquedo(bola);
  cachorro.incluirBrinquedo(osso);

  // 5. Demonstrar métodos
  cachorro.comer();
  cachorro.brincar(bola);
  cachorro.fazerSom();

  print('');

  gato.comer();
  gato.fazerCarinho();
  gato.fazerSom();

  print('');

  // 6. Polimorfismo
  Animal animal1 = cachorro;
  Animal animal2 = gato;

  animal1.fazerSom();
  animal2.fazerSom();

  Animal animal = Animal('Thor', 5);

  Veterinario vet = Veterinario('Dra. Mariana');

  Tratamento tratamento =
      Tratamento('Aplicação de vacina');

  vet.atender(animal);

  vet.atender(animal, tratamento);
}