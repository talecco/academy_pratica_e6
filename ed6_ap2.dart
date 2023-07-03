void main(List<String> args) {
  try {
    final valor = int.parse(args[0]);
    if (valor % 2 == 0) {
      numeroPar(valor);
    } else {
      throw FormatException('Entrada inválida. Insira um número inteiro par.');
    }
  } catch (e) {
    print('Erro: $e');
  }
}

void numeroPar(int numero) {
  print('Entrada correta, voce inseriu um numero par.');
}
