class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  double setPeso(String peso) {
    try {
      _peso = double.parse(peso);
    } catch (e) {
      throw ArgumentError();
    }

    if (_peso.isNegative) {
      _peso = 0;
      throw ArgumentError();
    }

    return _peso;
  }

  double getPeso() {
    return _peso;
  }

  double setAltura(String altura) {
    try {
      _altura = double.parse(altura);
    } catch (e) {
      throw ArgumentError();
    }

    if (_altura.isNegative) {
      _altura = 0;
      throw ArgumentError();
    }

    return _altura;
  }

  double getAltura() {
    return _altura;
  }

  Pessoa(String nome) {
    setNome(nome);
  }
}
