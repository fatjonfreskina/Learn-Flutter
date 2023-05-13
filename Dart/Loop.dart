
main() {
	int n = 0;
	List ls = [1,2,3,4,5,6];

	//CLASSIC FOR LOOP
	for (int m = n; m < ls.length; m++){
	print("${m}" + " for loop");}
	print("Fine for loop");

	//FOREACH LOOP
	ls.forEach((element) => print(element));
	print("Fine forEach loop");

	//WHILE LOOP
	int index = 0;
	while (n<10){
		ls[index] *= 2; // raddoppia il primo elemento finchè n non è >= 10
		n++;
	}
	print(ls);
	print("Fine while loop");
}
