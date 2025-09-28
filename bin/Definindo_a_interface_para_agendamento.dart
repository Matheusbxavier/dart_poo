abstract class Agendamento {
  void calcularDuracaoConsulta();

  void verificarDisponibilidade();
}

class Medico implements Agendamento {
  @override
  void calcularDuracaoConsulta() {
    print("Duração padrão da consulta é de 30 minutos");
  }

  @override
  void verificarDisponibilidade() {
    print(
      "Disponibilidade é verificada com base em um calendario de agendamentos",
    );
  }
}

class Dentista implements Agendamento {
  @override
  void calcularDuracaoConsulta() {
    print("Duração padrão da consulta é de 45 minutos");
  }

  @override
  void verificarDisponibilidade() {
    print("verificar disponibilidade considerando intervalos de 15 minutos");
  }
}

class GerenciadorDeAgendamentos {
  List<Agendamento> profissionais = [];

  void adicionarProfissional(Agendamento profissional) {
    profissionais.add(profissional);
  }

  void exibirDuracaoEDisponibilidade() {
    for (Agendamento profissional in profissionais) {
      profissional.calcularDuracaoConsulta();
      profissional.calcularDuracaoConsulta();
    }
  }
}

void main() {}
