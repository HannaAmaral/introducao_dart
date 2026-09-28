/* // ...existing code...
import 'dart:convert';
======

import 'package:consulta_cep/' as consulta_cep;
>>>>>>> 51fefc1 (nome dos projetos)
import 'package:http/http.dart' as http;
// ...existing code...
Future<void> main(List<String> arguments) async{
  final url = Uri.parse('https://viacep.com.br/ws/17509060/json');

  final resposta = await http.get(url);

  if(resposta.statusCode == 200){
    
    final Map<String, dynamic> dados = jsonDecode(resposta.body);

    print("Logradouro: ${dados['logradouro']}");
    print("Bairro: ${dados['bairro']}");
    print("Cidade: ${dados['localidade']}");
    print("UF:  ${dados['uf']}");

  }else{
    print("CEP inválido ou inexistente!!");
  }
}
// ...existing code... */