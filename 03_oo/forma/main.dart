<<<<<<< HEAD
import 'Forma.dart';
import 'circulo.dart';
=======
import 'circulo.dart';
import 'Forma.dart';
>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
import 'quadrado.dart';
import 'retangulo.dart';
import 'triangulo.dart';

<<<<<<< HEAD
void main(List<String> args) {
  Forma objQuadrado = Quadrado(15.0);
  objQuadrado.imprimeForma();


  Forma objRetangulo = Retangulo(4, 8);
  objRetangulo.imprimeForma();


  Forma objTriangulo = Triangulo(10.3, 4);
  objTriangulo.imprimeForma();

  Forma objCirculo = Circulo(4);
  objCirculo.imprimeForma();


  List<Forma> formas = [];
  formas.add(Quadrado(8.0));
  formas.add(Retangulo(4.0, 8.0));
  formas.add(Triangulo(10.3, 4.0));
  formas.add(Circulo(4.0));

  print("-------------------------------");
  formas.forEach((forma) => forma.imprimeForma());
=======
void main(List<String> args){

  Forma objQuadrado = Quadrado(15.0);
  objQuadrado.imprimeForma();

  Forma objRetangulo = Retangulo(10.0, 3.0);
  objRetangulo.imprimeForma();

  Forma objTriangulo = Triangulo(5, 7);
  objTriangulo.imprimeForma();

  Forma objCirculo = Circulo(3);
  objCirculo.imprimeForma();

  List<Forma> formas = [];
  formas.add( Quadrado(8.0));
  formas.add( Retangulo(5.0, 3.0));
  formas.add( Triangulo(10.0, 7.0));
  formas.add( Circulo(3.0));

  formas.forEach((forma) => forma.imprimeForma());

>>>>>>> a5da54bbb295fb028a9e2f964b69da255e4e62f1
}