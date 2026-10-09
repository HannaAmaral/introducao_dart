import 'package:consulta_cep_flutter/views/endereco-view.dart';
import 'package:flutter/material.dart';
import 'package:consulta_cep_flutter/views/splash_view.dart';
void main() {
  runApp(const ConsultaCepApp());
}

class ConsultaCepApp extends StatelessWidget{

  const ConsultaCepApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
  inputDecorationTheme: InputDecorationTheme(
  floatingLabelStyle: TextStyle(
    color: Color.fromARGB(255, 255, 140, 238),
    fontWeight: FontWeight.w600,
  ),
),
),

      debugShowCheckedModeBanner: false,

      home: const SplashView(),
      // home: Scaffold(

      //   appBar: AppBar(
      //     title: const Text('Consulta CEP'),
      //   ),

      //   body: const Center(
      //     child: Text('Meu Primeiro app flutter'),
      //   ),
        

      // ),
    );

  }

}