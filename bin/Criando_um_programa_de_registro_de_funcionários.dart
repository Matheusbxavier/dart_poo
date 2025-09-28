// ignore: file_names
void main() {

  Funcionario ana = Analista("Ana Falcao");
  ana.calcularSalario();

  Funcionario beatriz = Gerente("Beatriz Maia");
  beatriz.calcularSalario();

  Funcionario paulo = Diretora("Paulo Freitas");
  paulo.calcularSalario();

}

abstract class Funcionario {
  String nome;
  double salarioBase;

  Funcionario(this.nome): salarioBase = 3000;

  void calcularSalario() {}
}

class Analista extends Funcionario {
  Analista(super.nome);

  @override
  void calcularSalario() {
    salarioBase = salarioBase+ salarioBase * 1.2;
    print("Sálario do Analista $nome: R\$ $salarioBase");
  }
}

class Gerente extends Funcionario {
  Gerente(super.nome);

  @override
  void calcularSalario() {
    salarioBase = salarioBase+ salarioBase*1.5;
    print("Sálario do Gerente $nome: R\$ $salarioBase");
  }
}

class Diretora extends Funcionario {
  Diretora(super.nome);

  @override
  void calcularSalario() {
    salarioBase = salarioBase+ salarioBase*2.0;
    print("Sálario do Diretora $nome: R\$ $salarioBase");
  }
}

