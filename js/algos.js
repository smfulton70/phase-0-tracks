// RELEASE 0

/* Create a function that takes an array of words as an argument. We set the first word in that array to be the longest word so far.
We then iterate through the array of words and each time we encounter a word that is longer than the previous word, we establish this
word to be the longest word so far. By the time we have iterated through the entire array of words, we return the longest word so far.
If there are two or more words that are the longest words, the first word encountered gets returned. */

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

/* Create a function that takes two objects as arguments. We create an array that will be used to accumulate elements, each of which is 
a key item pair that is made into a simple string with a space separating the key from the value. Using a for..in loop, we iterate
through the first object and for each key value pair, we create the string and push it into the array we have created. We then iterate
through all of the key value pairs in the second object and create them into simple strings as we did for the first object, and for each 
key value pair string, we test it to see if that string is found in the array containing the first object's key value strings. All we have
to do is find ONE match and then we return a boolean of true and break from the loop and return true. Otherwise, we continue to iterate
and once we are through the loop and find no matches, then we return false. */

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

// RELEASE 2

/* Create a function that takes an integer as an argument, and that integer is the number of strings that the function will create.
However many strings it will create in one call of the method, each string will be of a random length between 1 and 10 characters. There
will be 62 characters for the strings to be comprised of (All letters in the alphabet, both capital and lower case, and the digits 0-9).
We have an outer loop that is iterated the same number of times as number of strings there should be, and the inner loop iterates the
same number of times as characters there should be in a string. Each iteration of the inner loop generates a string that is fed into an 
array of strings. The whole method returns the array of strings. */

function randomTestData(integer){
	var integer;
	var array_of_strings = [];
	var possibleCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	for (i=0;i<integer;i++){
		randomLengthOfStrings = Math.floor((Math.random() * 10) + 1);
		array_of_strings[i] = "";
		for (j=0;j<randomLengthOfStrings;j++){
			array_of_strings[i] += possibleCharacters.charAt(Math.floor((Math.random() * 62) + 1))
		}
	}
	return array_of_strings;
}

// RELEASE 0 DRIVER CODE

console.log(longestPhrase(["long phrase","longest phrase","longer phrase","Scott Michael Fulton","Supercalifragilisticexpialidocious"]));
console.log(longestPhrase(["Scott Michael Fulton","Dev Bootcamp","Fiery Skippers!!!!!! San Francisco peeps!","Ruby is fun."]))

// RELEASE 1 DRIVER CODE

console.log(findKeyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
console.log(findKeyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}))
console.log(findKeyValueMatch({name: "Scott", age: 47, address: "1717 Tanglewood Ln"},{name: "Robyn", age: 42, address: "1717 Tanglewood Ln"}))

// RELEASE 2 DRIVER CODE

var counter=0;
while (counter < 10){
	var array_of_strings = randomTestData(10);
	console.log(counter+1 + ". Here is an array of randomly-generated strings: \n" + array_of_strings + "\n\n");
	console.log("Here is the longest string from that array: \n" + longestPhrase(array_of_strings) + "\n\n");	
	counter++;
}

