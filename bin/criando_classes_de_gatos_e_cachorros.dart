void main() {
  Cachorro cachorroDeMaria = Cachorro("Jaice");
  cachorroDeMaria.abanarRabo();
  cachorroDeMaria.emitirSom();

  Gato gatoDeJoao = Gato("Lasanha");
  gatoDeJoao.arranhaMoveis();
  gatoDeJoao.emitirSom();
}

class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom() {
    print("O $nome está fazendo som");
  }
}

class Cachorro extends Animal {
  Cachorro(super.nome);

  @override
  void emitirSom() {
    print("O cachorro late.");
  }

  void abanarRabo () {
    print("O cachorro está abanando o rabo. ");
  }
}

class Gato extends Animal {
  Gato(super.nome);

  @override
  void emitirSom() {
     print("O gato miou.");
  }

  void arranhaMoveis() {
    print("O gato está arranhando os móveis");
  }
}
