//Você trabalha no time de desenvolvimento de um sistema de gestão de estoque para uma loja de eletrônicos. Sua tarefa é criar uma classe chamada ItemEstoque que deverá armazenar informações sobre o nome do produto e a quantidade em estoque. Em seguida, você deve instanciar dois itens: um para "Smartphone", com 100 unidades em estoque, e outro para "Notebook", com 50 unidades. Por fim, você deve imprimir as informações desses itens no terminal.


void main() {
    // Instanciando os itens
    ItemEstoque smartphoneEstoque = ItemEstoque("Smartphone", 100, 2000);
    ItemEstoque notebookEstoque = ItemEstoque("Notebook", 50, 5000);
    ItemEstoque tvEstoque = ItemEstoque("TV", 30, 1800);
    ItemEstoque tabletEstoque = ItemEstoque("Tablet", 3, 1200);
    ItemEstoque powerBankEstoque = ItemEstoque("Power Bank", 8, 89.90);

    // Criando a lista de itens em estoque
    List<ItemEstoque> estoque = <ItemEstoque>[
      smartphoneEstoque,
      notebookEstoque,
      tvEstoque,
      tabletEstoque,
      powerBankEstoque,
    ];

    // Percorrendo a lista e imprimindo informações dos itens
    for (ItemEstoque totalEstoque in estoque) {
      print(
        "Produto: ${totalEstoque.nome}, Quantidade em estoque: ${totalEstoque.qtd}, Valor do Produto: ${totalEstoque.preco}",
      );
    }

    // Registrando entrada e saída de estoque
    smartphoneEstoque.registrarEntrada(20);
    notebookEstoque.registrarSaida(10);

    // Atualizando o preço do Notebook
    notebookEstoque.atualizarPreco(4799.99);

    // Imprimindo informações atualizadas dos itens
    print("-----------------------------------");
    print(
      "Produto ${smartphoneEstoque.nome}, Quantidade em estoque: ${smartphoneEstoque.qtd}, valor: ${smartphoneEstoque.preco}",
    );
    print(
      "Produto ${notebookEstoque.nome}, Quantidade em estoque: ${notebookEstoque.qtd}, valor: ${notebookEstoque.preco}",
    );
  }

class ItemEstoque {
  String nome;
  int qtd;
  double preco;

  ItemEstoque(this.nome, this.qtd, this.preco);

  void registrarEntrada(int valor) {
    qtd += valor;
  }

  void registrarSaida(int valor) {
    if (qtd >= valor) {
      qtd -= valor;
    } else {
      print('Quantidade insuficiente em estoque para realizar a saída.');
    }
  }

  void atualizarPreco(double novoPreco) {
    preco = novoPreco;
  }
}