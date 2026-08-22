void main(List<String> args){
  //tipos genericos

  List<int> listaNumeros = [1,2,3];
  List<String> listaTextos = ["Fulano","Beltrano","Sicrano"];

  //tipos de lista por Inferencia
  var listaNumerosInferencia = [1,2,3];
  var listaTextosInferencia = ["Fulano","Beltrano","Sicrano"];

  //Lista vazia
  List<int> listaSemNumeros = [];
  var listaSemNumerosInferencia = <int>[];
  var listaSemTextosInferencia = <String>[];

//  var listaSemNumerosInferencia = [];  // fica dynamic

//NullSafety

//tem que iniciar a Lista e os itens não podem ser nulos;

  List<String> nome;
//apresenta erro, pois a lista nao esta inicialiada
//print(nome.lenght);

  nome = [];
  print(nome.length);

  //apresenta um erro pois a lista nao permite intes nulos
  //nome = ["Fulano", null];

//Não precisa iniciar a lista, porem os itens nao podem ser nulos
List<String>? nomeSemIniciar;
nomeSemIniciar = null;
if(nomeSemIniciar != null)
  print(nomeSemIniciar.length);

//precisa Iniciar a lista
List<String?> nomeItensNulos;

//apresentar porque a lista deve ser inicializada
// nomeitensNulos = null;

  nomeItensNulos = ["Fulano",null];

  //Nao precisa inicializar porque os itens podem ser nulos
  List<String?>? nomeSemIniciarItensNulos;
  nomeSemIniciarItensNulos = null;
  nomeSemIniciarItensNulos = ["Fulano", null];

  //declaração por inferencia
  var nomeItensNulosInferencia = <String?>[null];

  final numeros = [1,2,3,4];
  print(numeros);

//metodos add: adiciona um item no final da lista
numeros.add(5);
print(numeros);

final nomes = ["Fulano", "Beltrano"];

nomes.add("Sicrano");
print("°1) ${nomes[0]}");
print("°2) ${nomes[1]}");
print("°3) ${nomes[2]}");

//METODO INSERT: adiciona o novo item e uma posição determinada

nomes.insert(0,"Novo primeiro nome");
print(nomes);

//metodo insertAll: adiciona uma lista em outra
final nomesNovos = ["joão", "Maria"];
nomes.addAll(nomesNovos);
print(nomes);

//metodos remove;
nomes.remove("João");
print(nomes);

}