// reverse string function

// input: string

// steps:
	// start at last character in string
	// for each letter concatenate into new string
	// do this until i = 0

//output: string

function reverse(string) {
	var reversed = "";
	for (var i = string.length; i > -1; i -= 1) {
		reversed += string[i];
	}
	return reversed;
};

var backwards = reverse("hello");

if (1 == 1) {
	console.log(backwards);
};