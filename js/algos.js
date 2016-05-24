// Write a function that takes an integer for length, and builds and returns an array of 
// strings of the given length. So if we ran your function with an argument of 3, we would get 
// an array of 3 random words back (the words don't have to be actual sensical English words --
//  "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 
// letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that 
// you'll have to look up, but the solution on how to do so is relatively straightforward.)

// input: integer
// output: array of strings of given length, rand length from 1..10


// function that returns array of given length with random words
	// input: integer
	// create words array
	// WHILE words array length < integer
		// call random word function with random integer (1..10)
		// push return value to words
	// return array

// function that generates random word of given length
	// input: random length for word (1..10)
	// create alphabet string variable
	// create word variable as empty string
	// WHILE word length < input
		// generate random index (1..26)
		// push random letter to word string
	// return word




function longest(array) {
	var long = "";
	var i = 0; 
	while (i < array.length) {
		if (array[i].length > long.length) {
			long = array[i];
		}
		i++;
	}
	return long;
}

function match(obj1, obj2) {
	var keys1 = Object.keys(obj1);
	var keys2 = Object.keys(obj2);

	for (var i = 0; i < keys1.length; i++) {
		for (var j = 0; j < keys2.length; j++) {
			if ( keys1[i] == keys2[j] && obj1[keys1[i]] == obj2[keys2[j]] ) {
				return true;
			}
		}
	}
	return false;
}

function randWord(randInteger) {
	var alphabet = 'abcdefghijklmnopqrstuvwxyz';
	var word = '';

	while (word.length < randInteger) {
		var random = Math.floor((Math.random() * 26) + 1);
		word += alphabet[random];
	}
	return word;
}

function randStrings(integer) {
	var words = [];
	var random = Math.floor((Math.random() * 10) + 1)

	while (words.length < integer) {
		words.push(randWord(random));
	}
	return words;
}

// ==================================================================================

// Driver Code

// longest function
var result1 = longest(["stirng","acs","adacd","Asdcds","this is the longest"]);
var result2 = longest(["a","aa","aaa","aba"])

console.log(result1);
console.log(result2);

// match function
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};
var obj3 = {name: "Apple", age: 44};

console.log(match(obj1,obj2));
console.log(match(obj2,obj3));

// random strings function
console.log(randStrings(3));
console.log(randStrings(5));




