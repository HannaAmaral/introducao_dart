void main(List<String> args){
  //SET NAO PERMITE valores duplicados
  Set<int?> numeros = {1,1,2,2,3,4};
  numeros.forEach(print);

  //Metodo List.toSet transforma uma lista em um set
  var numerosList = {1,1,1,1,1,1,1,1,1};
  numerosList.forEach(print);

  var numerosSet = numerosList.toSet();
  numerosSet.forEach(print);

  var conjunto1 = {1,2,3,4,5,6};
  var conjunto2 = {1,2,3,7};

 //metodo difference: apresenta apenas itens excllusivos dos dois conjuntos
 print(conjunto1.difference(conjunto2));
 print(conjunto2.difference(conjunto1));

//metodo union: junta dois sets
print(conjunto1.union(conjunto2));

//metodo intersection:
print(conjunto1.intersection(conjunto2));

//lookup procura um item no set se ecnotrar retorna o valor caso contrario retona null
print(conjunto1.lookup(conjunto2));

//retorna um item atraves do indice
//print("Segundo item do SET: ${.elementAt(1)}");
}