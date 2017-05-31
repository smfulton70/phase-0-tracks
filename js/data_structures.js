horseColor = ["gray","black","green","calico"];
horseName = ["abe","fido","ed","charley"];

horseColor.push("white");
horseName.push("rhinestone");

function horseCreator(horseName,horseColor){
	var horse = {}
	for (i=0; i<horseName.length; i++){
		horse[horseName[i]] = horseColor[i];
	}
return horse;

}

console.log(horseCreator(horseName,horseColor));


