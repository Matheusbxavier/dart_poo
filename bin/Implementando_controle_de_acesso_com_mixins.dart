mixin ControleDeAcesso {
  verificarPermissaoAdmin(String papel) {
    return papel == "admin";
  }
}

void main() {}
