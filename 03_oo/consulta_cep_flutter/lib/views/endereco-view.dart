import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../exceptions/api-invalida-exception.dart';
import '../exceptions/cep-invalido-exception.dart';
import '../exceptions/cep-nao-encontrado-exception.dart';
import '../models/localizacao.dart';


import '../controllers/endereco-controller.dart';
import '../exceptions/localizacao-nao-encontrada-exception.dart';
import '../main.dart';
import '../models/endereco.dart';
import '../services/localizacaoService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EnderecoView extends StatefulWidget {
  const EnderecoView({super.key});

  @override
  State<StatefulWidget> createState() => _EnderecoViewState();
}

class _EnderecoViewState extends State<EnderecoView> {
  final TextEditingController cepController = TextEditingController();

  final EnderecoController enderecoController = EnderecoController();

  final Localizacaoservice localizacaoservice = Localizacaoservice();

  Localizacao? localizacao;

  Endereco? endereco;

  String? mensagemErro;

  bool carregando = false;

  bool localizacaoindisponivel = false;

   
  Widget _construirLocalizacao() {
    final double? latitude = double.tryParse(localizacao!.latitude);
    final double? longetude = double.tryParse(localizacao!.longitude);
 
    if (latitude == null || longetude == null) {
      return Text('Localização Indisponivel');
    }
 
    final LatLng coordenada = LatLng(latitude, longetude);
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1),
 
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: FlutterMap(
          options: MapOptions(initialCenter: coordenada, initialZoom: 16),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'br.com.senac.consultacep',
            ),
 
            MarkerLayer(
              markers: [
                Marker(
                  point: coordenada,
                  width: 50,
                  height: 50,
                  child: const Icon(Icons.location_on, size: 40),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
 

  Future<void> consultarCEP() async {
    try {
      setState(() {
        carregando = true;
        mensagemErro = null;
        this.endereco = null;
        localizacao = null;
        localizacaoindisponivel = false;
      });

      String cep = enderecoController.validaCEP(cepController.text);

      final endereco = await enderecoController.buscarEndereco(cep);

      setState(() {
        this.endereco = endereco;
      });

      try {
        final localizacao = await enderecoController.buscarLocalizacao(cep);

        setState(() {
          this.localizacao = localizacao;
        });
      } catch (e) {
        setState(() {
          localizacaoindisponivel = true;
        });
      } finally {
        carregando = false;
      }
    } on CepInvalidoException catch (e) {
      setState(() {
        mensagemErro = e.toString();
      });
    } on CepNaoEncontradoException catch (e) {
      setState(() {
        mensagemErro = e.toString();
      });
    } on ApiInvalidaException catch (e) {
      setState(() {
        mensagemErro = e.toString();
      });
    } catch (e) {
      setState(() {
        mensagemErro = e.toString();
      });
    } finally {
      carregando = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Consulta Endereço',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 180, 247),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: cepController,
              keyboardType: TextInputType.number,
              onSubmitted: (valor) {
                consultarCEP();
              },
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                labelText: 'Digite o CEP',
                hintText: '00000-000',
                filled: true,
                fillColor: Color.fromARGB(255, 255, 246, 254),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 206, 251),
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 206, 251),
                    width: 2,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: consultarCEP,
                    icon: const Icon(Icons.search),
                    label: const Text('Buscar endereço'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 180, 247),
                      foregroundColor: Color.fromARGB(255, 255, 254, 255),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        cepController.clear();
                        endereco = null;
                        mensagemErro = null;
                      });
                    },
                    icon: const Icon(Icons.clear),
                    label: const Text('Limpar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 250, 254),
                      foregroundColor: Color.fromARGB(255, 255, 180, 247),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      side: BorderSide(
                        color: Color.fromARGB(255, 255, 206, 250),
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            if (endereco != null) ...[
              const SizedBox(height: 24),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 206, 251),
                    width: 2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Endereço encontrado',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 14),

                    const Text(
                      'LOGRADOURO',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 1),

                    Text(
                      endereco!.logradouro,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'BAIRRO',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 1),

                    Text(
                      endereco!.bairro,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'LOCALIZAÇÃO',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 1),

                    Text(
                      '${endereco!.localidade} - ${endereco!.uf}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
 
              if (!localizacaoindisponivel && localizacao != null)
                _construirLocalizacao(),
 
              const SizedBox(height: 20),
 
              if (localizacaoindisponivel)
                Text(
                  'Localização indisponivel',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
            ],
 
            const SizedBox(height: 36),

            //ERRO DE NAO ENCONTRADO
            if (mensagemErro != null) ...[
              const SizedBox(height: 24),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.red.shade200),
                ),
                child: Row(
                  children: [
                    Icon(Icons.error_outline, color: Colors.red.shade700),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Text(
                        mensagemErro!,
                        style: TextStyle(color: Colors.red.shade700),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
