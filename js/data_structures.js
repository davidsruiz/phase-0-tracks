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