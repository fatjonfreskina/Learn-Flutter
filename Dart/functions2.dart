String prefissi = ""; //vogliamo la concatenazione dei 4 prefissi

main(List<String> args) {
	genera_bottone_1("bottone_conferma", 45, 100);
	genera_bottone_2(codice_colore: 65);

	var codici = ["ABC123", "DEF456", "GHI789", "JKL012"];
	codici.forEach((String ele) {prefissi += ele.substring(0,3);}); 		//esplicita sempre il tipo, elegante
	print(prefissi);														



	// Tra parentesi graffe la c.d. Funzione "anonima"
	// memorizzo nella variabile funzioni una LISTA di funzioni!!!!!! Amazing

	List funzioni = [(n) {return n*n;}, (n) {return n*n*n;}];
	print(funzioni[0](6)); // mi ritorna 6*6
	print(funzioni[1](2)); // mi ritorna 2*2*2


	//Funzione freccia
	var funzione_freccia = [(n) => n*n];
		print(funzione_freccia[0](5));
}


String genera_bottone_1 (String id, int codice_colore, [var larghezza]){ 
	// prima i parametri obbligatori, poi gli opzionali
	//il resto in base ai parametri
	// in generale devi seguire l'ordine con cui hai definito la function
	String html = "<button id='";
	return html;
}

String genera_bottone_2 ({var id, var codice_colore, var larghezza}){ 
	// parametri "nominali"
	String html = "<button id='";
	return html;
}