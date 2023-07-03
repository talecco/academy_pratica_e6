import 'dart:math';

void main() {
  try {
    final retangulo = Retangulo(Random().nextInt(100), Random().nextInt(100));
    final area = retangulo.calcularArea();
    print('Área do retângulo: $area');
  } catch (e) {
    print('Erro: $e');
  }
}

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  double _base;
  double _altura;

  Retangulo(double base, double altura) {
    if (base <= 0 || altura <= 0) {
      throw Exception(
          'Dimensões inválidas, informe apenas valores positivos maiores que zero');
    }
    _base = base;
    _altura = altura;
  }

  double get base => _base;
  double get altura => _altura;

  @override
  double calcularArea() {
    return base * altura;
  }
}
