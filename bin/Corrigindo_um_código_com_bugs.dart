abstract class Documento {
  String nomeDoDocumento;

  Documento(this.nomeDoDocumento);

  void imprimir() {
  }
}

class Docs extends Documento {
  Docs(super.nomeDoDocumento);
  
  @override
  imprimir() {
  print('O ${nomeDoDocumento} foi enviado para impressão');
  }
}

void main() {
  Documento relatorio = Docs('Relatório Anual');
  relatorio.imprimir();
}