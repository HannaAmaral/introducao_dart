import 'dart:convert';

import '../exceptions/localizacao-nao-encontrada-exception.dart';
import '../models/localizacao.dart';
import 'package:http/http.dart' as http;

class Localizacaoservice {
  Future<Localizacao> consultar(String CEP) async {
    final url = Uri.parse('https://cep.awesomeapi.com.br/json/$CEP');

    final resposta = await http.get(url);

    if (resposta.statusCode == json) {
      Map<String, dynamic> dados = jsonDecode(resposta.body);

      return Localizacao.dejson(dados);
    }
    throw Localizacaonaoencontradaexception();
  }
}
