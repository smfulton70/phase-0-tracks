/*Add a file called algos.js to the phase-0-tracks/js folder.
In algos.js, write a function that takes an array of words or 
phrases and returns the longest word or phrase in the array. 
So if we gave your function the array of ["long phrase","longest 
phrase","longer phrase"], it would return "longest phrase". This
is a logical reasoning challenge, so try to reason through this 
based on what you already know, rather than Googling the fanciest 
solution or looking up built-in sorting functions. Note that 
"some string".length will do what you expect in JS.
Add driver code that tests your function on a few arrays.*/

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

console.log(longestPhrase(["long phrase","longest phrase","longer phrase","Scott Michael Fulton","Supercalifragilisticexpialidocious"]));

console.log(longestPhrase(["Scott Michael Fulton","Dev Bootcamp","Fiery Skippers!!!!!! San Francisco peeps!","Ruby is fun."]))