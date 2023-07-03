void main(List<String> args) {
  try {
    final valor = int.parse(args[0]);
    numero('Número digitado: $valor');
  } catch (e) {
    print('Entrada inválida. Insira apenas números inteiros.');
  }
}

void numero(String valor) {
  try {
    print(valor);
  } catch (e) {
    print('Erro na conta bancária: $e');
  }
}
