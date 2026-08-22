void main(List<String> args){
  final estudante = <String,String>{
    'nome': "Fulano de Tal",
    "Curso": "Desenvolvimento de Sistemas"
  };

  print(estudante);

  final escola = <String,Object>{
    'nome': 'Senac Marilia',
    'curso':[
      {
        'nome':'tecnico em desenvolvimento de sistemas',
        'Descrição': 'Gerenciamento das NRs- Normas Regulamentadoras'
      },
      {
        'nome':'tecnico em segurança de sistemas',
        'Descrição': 'Gerenciamento das NRs- Normas Regulamentadoras'
      },
    ]
  };
  print(escola);
  print("Escola: ${escola['']}");
  print("Cursos");
  for(var curso in escola['cursos'] as List) {
    print("- ${curso['nome']} - ${curso['Descrição']}");
  }
}