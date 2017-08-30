var colors = ['green', 'blue', 'yellow', 'orange'];
var names = ['Seabiscuit', 'Shadow', 'Jolt', 'Thunderbolt'];

colors.push('purple');
names.push('Dash');

var horses = {}

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);