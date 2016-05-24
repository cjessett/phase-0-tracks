// In algos.js, write a function that takes two objects and checks to see if the objects share at
// least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the 
// top and testing at the bottom of the file.) If we called your function with {name: "Steven", age: 54} 
// and {name: "Tamir", age: 54}, the function would return true, because at least one key-value pair matches 
// between the two objects. If no pairs match (and keep in mind that the two objects may not even have any 
// of the same keys), the function should return false. To make your life easier, don't worry about whether 
// a property is a string ('age') or an identifier name (age). Those can be considered equivalent. Again, 
// try to reason through the problem using the basics you've already learned, rather than looking up slick 
// search functions that will do the job for you. We'd rather see you write code that you actually understand!



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