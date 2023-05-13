num raddoppia(num n){ 	//funzione raddoppia. Ritorna un int
	return 2*n;}			//ps: potrei definirla anche dopo il main!

f(){} //function "vuota", non necessita return, se invocata e assegnata da Null

class Numero {
	num x = 9.9;}

main() {

	int n = 100;
	print(raddoppia(n));
	var x = f();
	print(x == null); 								//Darà true
	print(x.runtimeType); 							// utile function che ritorna il tipo

	Numero c_obj = Numero(); 						//creo un nuovo oggetto della classe Numero; nota come non serve "new"
	print('${c_obj.x}'+' Valore di x prima');		//accedo a "x"
	c_obj.x = raddoppia(c_obj.x); 					//lo raddoppio passandolo alla function
	print('${c_obj.x}'+' Valore di x dopo'); 		//ovviamente, l'oggetto è cambiato

}

