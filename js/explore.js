// we will create a function called reverseString. It is a function that will have a string passed to it, and it will
// print to the console the string in reverse. So if I enter "Scott Fulton" as the string for the function to reverse,
// it will print out "notluF ttocS" to the console.

// In order to achieve this, we will create a new string of the same length as the initial string. We will iterate through
// the original string and starting on the first letter, we will take that letter and place it in the last position of the
// new string. On the second letter of the first string, we will take that letter and place it in the second to last position
// of the new string. We will continue to do this until we have iterated through all of the characters in the original string,
// and then we know that the second string will be fully populated. We will the print out the second string.

function reverseString(string) {
	var originalString = string;
	var newString = "";
	for (var i = 0; i <= originalString.length; i++) {
		newString+=originalString.charAt(originalString.length - i);
	}
	return newString;
}

var myNameReversed = (reverseString("Scott Fulton"));
if (myNameReversed.substr(3,7) == "luF tto") {
	console.log(myNameReversed)
}

