import 'circulo.dart';
import 'Forma.dart';
import 'quadrado.dart';
import 'retangulo.dart';
import 'triangulo.dart';

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

}