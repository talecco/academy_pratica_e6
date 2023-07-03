void main() {
  try {
    final nomeArquivo = 'exemplo.txt';
    ArquivoTexto arquivoTexto = ArquivoTexto(nomeArquivo);
    arquivoTexto.abrir();
  } catch (e) {
    print(e);
  } finally {
    print("Fim do programa");
  }
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  ArquivoTexto(this.nome);
  final String nome;

  @override
  void abrir() {
    try {
      throw Exception("Erro ao abrir arquivo $nome");
    } catch (e) {
      print('relancar a exception');
      rethrow;
    }
  }
}
