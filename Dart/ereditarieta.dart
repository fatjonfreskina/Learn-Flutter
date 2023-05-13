class Madre {
  String variabile_madre = "";

// In mancanza di costruttore, dart da di default un costruttore vuoto Madre()
  Madre() {
    print("costruttore vuoto madre");
  }

  String metodo_madre() {
    return variabile_madre.toUpperCase();
  }
}

class Figlia extends Madre {
  String _variabile_figlia = "Test";
  Figlia();

  String getString(){
    return _variabile_figlia;
  }
  void _PrintName(){
      print("Hello");
    }
}

main(List<String> args) {
  Figlia f1 = Figlia();
  f1._PrintName();
}
