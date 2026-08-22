void main(List<String> args) {
  print("inclua os dados do aluno no formato NOME|IDADE|CURSO|UF");
  final alunos= [];
  alunos.add("JOAO|25|DESENVOLVIMENTO DE SISTEMAS|SP");
  alunos.add("MARIA|19|REFLEXOLOGIA|RJ");
  alunos.add("JOSE|50|ADMINISTRAÇÃO|ES");

  print(alunos[0]);
  final aluno = alunos[0].toString().split("|");
//  print("\nNome: ${aluno[0]} Idade: ${aluno[1]} Curso:${aluno[2]} UF:${aluno[3]}");


  alunos.add("SAMIRA|63|PODOLOGIA|SP");
  alunos.insert(1, "JOAQUIN|36|TST|RS");
  alunos.remove("MARIA|19|REFLEXOLOGIA|RJ");
  alunos.remove(3);  
alunos.forEach((aluno){
    final dados = aluno.split("|");

  print("Nome: ${dados[0]} Idade:${dados[1]} Curso:${dados[2]} UF:${dados[3]}");

});


}