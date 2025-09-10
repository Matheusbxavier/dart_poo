/*Você está desenvolvendo um Aplicativo de reservas de hotel em que clientes reservam quartos e gerenciam suas estadias. O sistema deve permitir que os clientes façam reservas, cancelem reservas, e consultem o status de suas reservas. 
Durante a implementação inicial, surgiram algumas necessidades de melhoria, como garantir a privacidade dos dados e otimizar a organização do código.*/

void main() {
  List<int> quartosReservados = [1,2,3,5,8];
  
  Cliente clienteJoaoMiguel = Cliente("Joao Miguel", [4,6]);
  
  print(clienteJoaoMiguel.nome);
  clienteJoaoMiguel.fazerReserva(7);
  clienteJoaoMiguel.cancelarRerva(4);
  
  

}

class Cliente {
  String nome;
  List<int> _reservas;

  Cliente(this.nome, this._reservas);

  void fazerReserva (int numero) {
    _reservas.add(numero);
    print(_reservas);
  }

  void cancelarRerva (int numero) {
    if (_reservas.contains(numero)) {
      _reservas.remove(numero);
      print(_reservas);
    }else {
      print("Reserva Invalida");
    }
  }
}