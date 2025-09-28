void main() {
  Cachorro cachorroDeMaria = Cachorro();
  cachorroDeMaria.abanarRabo();
  cachorroDeMaria.emitirSom();

  Gato gatoDeJoao = Gato();
  gatoDeJoao.arranhaMoveis();
  gatoDeJoao.emitirSom();
}

abstract class Animal {
  
  void emitirSom() {
    print("O animal está fazendo som");
  }

}

class Cachorro implements Animal {
  
  @override
  void emitirSom() {
    print("O cachorro late.");
  }

  void abanarRabo () {
    print("O cachorro está abanando o rabo. ");
  }
}

class Gato implements Animal {
 
  @override
  void emitirSom() {
     print("O gato miou.");
  }

  void arranhaMoveis() {
    print("O gato está arranhando os móveis");
  }

}
