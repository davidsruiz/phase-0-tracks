//Horse and color arrays

var colors = ["blue", "red", "yellow", "green"];

var names = ["George", "Bob", "Lucy", "Charlie"];

colors.push("purple");

names.push("Ed");

console.log(colors, names);

//assign colors to horses

var horses = {};

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}
console.log(horses);

function Car(color, year, isManual) {
  this.color = color;
  this.year = year;
  this.isManual = isManual;
  
  this.drive = function() {
    console.log("Vroom!");
  };
}

// create a few different cars 

var newCar = new Car("blue", 2010, false);
var oldCar = new Car("green", 1982, true);
var fastCar = new Car("red", 2017, true);

newCar.drive();
oldCar.drive();

console.log(newCar, oldCar, fastCar);