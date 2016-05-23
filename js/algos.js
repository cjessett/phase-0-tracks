// In algos.js, write a function that takes an array of words or phrases 
// and returns the longest word or phrase in the array. So if we gave your 
// function the array of ["long phrase","longest phrase","longer phrase"], 
// it would return "longest phrase". This is a logical reasoning challenge, 
// so try to reason through this based on what you already know, rather than 
// Googling the fanciest solution or looking up built-in sorting functions. 
// Note that "some string".length will do what you expect in JS.

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

var result1 = longest(["stirng","acs","adacd","Asdcds","this is the longest"]);
var result2 = longest(["a","aa","aaa","aba"])

console.log(result1);
console.log(result2);
