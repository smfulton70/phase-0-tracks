// RELEASE 0

function longestPhrase(array){
	var array_of_words = array;
	var longest_phrase_so_far = array_of_words[0];
	for (i=0; i<array_of_words.length; i++){
		if (array_of_words[i].length > longest_phrase_so_far.length) {
			longest_phrase_so_far = array_of_words[i];
		}
	}
	return longest_phrase_so_far;
}

// RELEASE 1

function findKeyValueMatch(object1,object2){
	var object1;
	var object2;
	var object1Array = [];
	var match;
	for(var index in object1){
		object1Array.push(index + " " + object1[index]);
    }
    for(var index in object2){
		if (object1Array.includes(index + " " + object2[index])){
			match = true;
			break;
		}	
		else match = false;
	}
    return match;
}

// RELEASE 0 DRIVER CODE

console.log(longestPhrase(["long phrase","longest phrase","longer phrase","Scott Michael Fulton","Supercalifragilisticexpialidocious"]));
console.log(longestPhrase(["Scott Michael Fulton","Dev Bootcamp","Fiery Skippers!!!!!! San Francisco peeps!","Ruby is fun."]))

// RELEASE 1 DRIVER CODE

console.log(findKeyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
console.log(findKeyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}))
console.log(findKeyValueMatch({name: "Scott", age: '47', address: "1717 Tanglewood Ln"},{name: "Robyn", age: 42, address: "1717 Tanglewood Ln"}))

