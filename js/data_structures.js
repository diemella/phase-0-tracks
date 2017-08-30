var colors = ['green', 'blue', 'yellow', 'orange'];
var names = ['Seabiscuit', 'Shadow', 'Jolt', 'Thunderbolt'];

colors.push('purple');
names.push('Dash');

var horses = {}

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}


// CONSTRUCTOR FUNCTION

console.log(horses);

function Car(color, mpg, isLuxury) {

  this.color=color;
  this.mpg=mpg;
  this.isLuxury=isLuxury;

  this.rev = function() {console.log("vurrmmm, vuurrrmm");};
}

// TEST CODE

var newCar = new Car("Orange", 25, true);
console.log(newCar);
console.log("Our car goes...");
newCar.rev();
console.log("----");

var oldCar = new Car("Rust", 8, false);
console.log(oldCar);
console.log("Our car goes...");
newCar.rev();
console.log("----");

var lameCar = new Car("tan", 44, false);
console.log(lameCar);
console.log("Our car goes...");
newCar.rev();
console.log("----");