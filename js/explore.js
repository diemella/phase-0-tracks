// PSEUDOCODE

//create an empty string
//create counter and set it to the length of the string minus 1
// FOR EACH letter in the string
  // add letter to empty string until counter is greater than or equal to 0
  // subtract one from counter
// return new string


// FUNCTION

function reverse(str){
  var newStr = '';
  for (var i = str.length-1; i >= 0; i -= 1) {
    newStr += str[i];
  }
  return newStr
}

// TEST CODE

console.log(reverse('hello'));
//expect 'olleh'