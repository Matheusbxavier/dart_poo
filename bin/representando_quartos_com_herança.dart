void main() {}

class Quarto {
  String tipo;
  double valorDiaria;
  int numeroDeDiarias;

  Quarto(this.tipo, this.valorDiaria, this.numeroDeDiarias);
}

class QuartoSimples extends Quarto {
  QuartoSimples(super.tipo, super.valorDiaria, super.numeroDeDiarias);
}

class QuartoMedio extends Quarto {
  QuartoMedio(super.tipo, super.valorDiaria, super.numeroDeDiarias);
}

class QuartoLuxo extends Quarto {
  QuartoLuxo(super.tipo, super.valorDiaria, super.numeroDeDiarias);
}

