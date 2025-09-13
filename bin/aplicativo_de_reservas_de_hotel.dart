/*Você está desenvolvendo um Aplicativo de reservas de hotel em que clientes reservam quartos e gerenciam suas estadias. O sistema deve permitir que os clientes façam reservas, cancelem reservas, e consultem o status de suas reservas. 
Durante a implementação inicial, surgiram algumas necessidades de melhoria, como garantir a privacidade dos dados e otimizar a organização do código.*/

void main() {
    
  Cliente clienteJoaoMiguel = Cliente("Joao Miguel", []);
  
  clienteJoaoMiguel.fazerReserva(7);
  clienteJoaoMiguel.fazerReserva(6);
  clienteJoaoMiguel.fazerReserva(5);
  clienteJoaoMiguel.cancelarRerva(7);
  
}

class Cliente {
  String nome;
  List<int> _reservas;

  Cliente(this.nome, this._reservas);

  void fazerReserva (int quarto) {
    _reservas.add(quarto);
    print("Sua reserva do quarto $quarto foi realizada com sucesso");
    _mostrarReserva();
    
  }

  void cancelarRerva (int quarto) {
    if (_reservas.contains(quarto)) {
      _reservas.remove(quarto);
      print("Sua reserva do quarto $quarto foi cancelada");
      _mostrarReserva();
    }else {
      print("Reserva Invalida");
    }
  }

  void _mostrarReserva () {
    print("Cliente $nome, suas reservas ativas são $_reservas");
    print("---------------");
  }
}