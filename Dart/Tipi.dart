main(List<String> args) {
  // TIPI SEMPLICI

  int n2 = 100;

  var s = 5.78;

  double d1 = 3.14;

  print("$d1");
  print("Somma: ${n2 + s}");
  print("Il primo programma dart!");

  String str = "CIAO".toLowerCase();
  str += " mona".toUpperCase();
  print(str + "; Fine test tipi semplici");

  // TIPI STRUTTURATI

  //tipo List
  List l = [1, str, 'ciao', 3];
  print(l[2] + "mona");
  print(l.length);

  List growableList = [1, 2]; // crea una lista fissa di numeri
  int c = 0;
  growableList.add(c);
  print(growableList.length);

  var fixedLengthList = List<int>.filled(5, 0);
  print(fixedLengthList); //Lista di default con 5 zeri, non modificabile in
  // lunghezza se non con {growable = true};

  //ciclo while
  int r = 5;
  while (r < 10) {
    growableList.add(r);
    r++;
    print(growableList);
  }
  // ciclo for-in ; da vedere..

  //Tipo Set
  Set<String> colori = {"giallo", "rosso"};
  //non ordinati, non accetta doppioni
  //esistono sotto-tipi del set, CompactLinkedHashSet<String>
  colori.forEach((element) {
    print(element);
  });
  //Tipo map, è il dizionario in python

  Map m = {"codice": "xyz", "descrizione": "climatizzatore ultra"};
  print(m["codice"]);
  m["costo"] = 1237;
  print(m["costo"]);
}
