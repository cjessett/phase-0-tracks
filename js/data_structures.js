// declare an array of four colors
var colors = ["blue", "purple", "red", "green"];

// declare an array of four horse names
var names = ["Ed", "Bob", "Mary", "Lucy"];

// add a color to the colors array
colors.push("yellow");

// add a name to the horse names array
names.push("Charlie");

// initialize java script object
jObject = {};

// loop through the colors and names arrays = length of array
for (var i = 0; i < names.length; i++) {
	// assign values to properties
	name = names[i];
	color = colors[i];
	jObject[name] = color;
}

console.log(jObject);


// Constructor function for Cars
function Car(color, wheels, isNew) {
	// In this context, 'this' refers to 
	// the individual car we're making
	console.log("Our new car:", this);
	
	// Therefore, this.name is sort of the Ruby
	// equivalent of @name
	this.color = color;
	this.wheels = wheels;
	this.isNew = isNew;
	
	// As for behavior, a function is a perfectly 
	// valid property value ... whoa!
	this.honk = function() { console.log("Honk! Honk!"); };
	
	console.log("CAR INITIALIZATION COMPLETE");
}

var car1 = new Car("red", 4, true);
console.log(car1);
car1.honk();
var car2 = new Car("black", 3, false);
console.log(car2);
var car3 = new Car("white", 4, true);
console.log(car3);
car3.honk =  function() { console.log("beep"); };
car3.honk();