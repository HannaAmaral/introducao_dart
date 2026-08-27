import 'package:consulta_github/consulta_github.dart' as consulta_github;
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async{
  final url = Uri.parse('https://api.github.com/users/HannaAmaral');

  final resposta = await http.get(url);

  if(resposta.statusCode == 200){
    final Map<String, dynamic> dados = jsonDecode(resposta.body);


    print("Nome do Usuario: ${dados['name']}");
    print("Login: ${dados['login']}");
    print("Bio: ${dados['bio']}");
    print("Localização: ${dados['location']}");
    print("Quantidade de seguidores: ${dados['followers']}");
    print("Quantidade de usuários seguidos: ${dados['following']}");
    print("Quantidade de repositórios públicos: ${dados['public_repos']}");
    print("URL do Perfil: ${dados['url']}");

    final urlRepositorios = Uri.parse(dados['repos_url']);

    final respostaRepositorios =  
    await http.get(urlRepositorios);

    if (respostaRepositorios.statusCode == 200) {
      final List<dynamic> repositorios =
          jsonDecode(respostaRepositorios.body);

           print("\nNome dos repositorios:");

            repositorios.forEach((repositorio) {
        print(repositorio['name']);
      });
    }

  }else{
    print("Perfil não encontrado");
  }

}
