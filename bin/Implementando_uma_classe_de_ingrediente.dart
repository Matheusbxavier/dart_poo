void main() {
  Fruta banana = Fruta("Banana");
  banana.detalhes();
  Legume cenoura = Legume("Cenoura");
  cenoura.detalhes();
  Tempero sal = Tempero("Sal");
  sal.detalhes();
}

class Ingredientes {
  String nome;
  String tipo;

  Ingredientes(this.nome, this.tipo);

  void detalhes() {
    print("Ingrediente: $nome");
    print("Tipo: $tipo");
  }
}

class Fruta extends Ingredientes {
  Fruta(String nome) : super(nome, "Fruta");

  @override
  void detalhes() {
    super.detalhes();
    print("Em geral, são vegetais que não podem ser cozidos nas receitas");
    print("------------------- ");
  }
}

class Legume extends Ingredientes {
  Legume(String nome) : super(nome, "Legume");

  @override
  void detalhes() {
    super.detalhes();
    print("Em geral, são vegetais que precisam ser cozidos");
    print("------------------- ");
  }
}

class Tempero extends Ingredientes {
  Tempero(String nome) : super(nome, "Tempero");

  @override
  void detalhes() {
    super.detalhes();
    print("São especiarias que condimentam os alimentos");
    print("------------------- ");
  }
}
