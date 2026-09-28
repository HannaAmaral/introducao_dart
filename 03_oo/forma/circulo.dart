<<<<<<< HEAD
import 'dart:math';

import 'Forma.dart';
=======
import 'Forma.dart';
import 'dart:math';

>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
import 'enum.dart';


class Circulo extends Forma{

<<<<<<< HEAD
  double raio;

  Circulo(this.raio):super(tpForma.Circulo);

  @override
  double calculaArea() {
    
    return pi * pow(raio, 2);
  }
=======
double raio;

  Circulo (this.raio) :super(tpForma.Circulo);

  @override
  
  double calculaArea(){
    return pi * pow(raio,2);
  }

>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
}