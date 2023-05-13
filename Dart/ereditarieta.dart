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
  String variabile_figlia = "";
  Figlia();
}

main(List<String> args) {
  Figlia f1 = Figlia();
  //Attenzione che Figlia f1 crea invece un oggetto VUOTO. In c++ invece no... Errore bastardo da tracciare
}
