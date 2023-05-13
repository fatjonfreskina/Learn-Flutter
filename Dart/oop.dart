class Cliente{
	String ragione_sociale = "";
	double _fatturato = 0;
	int ordini_settimanali = 0;
//Variabile privata

	Cliente(String ragione_sociale, double fatturato, int ordini_settimanali, bool malattie){ 		//COSTRUTTORE
		this.ragione_sociale = ragione_sociale;
		this._fatturato = fatturato;
		this.ordini_settimanali = ordini_settimanali;
		//ps un costruttore può richiamarne un altro!
	}

	//Metodo Getter, con 
	double get fatturato{
		return _fatturato;
	}
}

main(List<String> args){
	Cliente c1 = Cliente("Betolina", 2300.0, 67, true);
	var x = c1.fatturato;
	print(x);
	print("Fatturato del cliente " + '${c1.ragione_sociale}' + ": " + '${c1.fatturato}');
	//Di default tutti i metodi sono pubblici
	//Può essere privatizzata - o meglio non accessibile da UN ALTRO sorgente - aggiungendo un underscore
	//nel metodo costruttore davanti alla variabile da privatizzare, come in "malattie"
}