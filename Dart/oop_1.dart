//Provo ad accedere alla variabile privata definita nel file oop.dart "malattie"

import "oop.dart";

main (List<String> args){
	Cliente c = Cliente ("abc", 10, 100, true);
	print(c.fatturato);
	// print(c.malattie); Mi darebbe errore, proprio perchè non accessibile
	// invece c.fatturato funziona poichè c'è un metodo getter
}