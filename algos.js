// Release 0: Find the Longest Phrase

// PSEUDOCODE for Release 0

// create an empty string for current longest
// set the first word/phrase in list as the current longest
// create and set counter at the second word/phrase on the list
//FOR each word/phrase in the list
  // while counter is less than the number of words/phrases in the list
    //if word/phrase is longer the current longest, set the word/phrase as current longest.
    // add one to counter
// return current longest

//------

// Release 1 : Find a Key-Value Match

// PSEUDOCODE for Release 1

//FOR each property in first object, look FOR each property in second object...
  //IF the value of the first object's first property matches the value of the second object's first property OR if the value of the first object's second property matches the value of the second object's second property,
    //return true
  // otherwise,
    //return false

//-----

// Release 2: Generate Random Test Data

//PSEUDOCODE for Release 2

// create an empty container
// create and set counter to zero
// WHILE length of array is less than integer
  //generate word of random length
    //create an empty string for random word
    //create a string of the alphabet
    //create a randomn length between 1 and 10 like so: Math.floor(Math.random()*10) + 1
    // WHILE length of random word is less than random length
      //add a random letter from the alphabet to the random word
  // add word to container
  // add one to counter
// return array



// FUNCTIONS

// Release 0 -----

function findLongest(arr) {
  var current_longest = "";
  current_longest = arr[0];
  for (var i = 1; i < arr.length; i += 1) {
  // for (var i = arr.length - 1; i >= 0; i -= 1) {
    if (arr[i].length > current_longest.length) {
     current_longest = arr[i];
    }
  }
  return current_longest;
}

// Release 1 -----

function findMatch(objOne,objTwo) {

  for (var propertyOne in objOne) {
    for (var propertyTwo in objTwo) {
      if (objOne[propertyOne] === objTwo[propertyOne] || objOne[propertyTwo] === objTwo[propertyTwo]){
        result = true;
      } else {
        result = false;
      }
    }
    return result;
  }

}

// DRIVER CODE

// Release 0 -----

var test_arr = ["long phrase","word", "longer phrase","longest phrase", "a phrase"];

console.log(findLongest(test_arr));


// Release 1 -----

// Test TRUE
var objOne = {name: "Steven", age: 55};
var objTwo = {name: "Tamir", age: 55};

console.log(findMatch(objOne, objTwo));


// Test FALSE

var objSeven = {animal: "Dog", legs: 4};
var objEight = {animal: "Cat", legs: 3};

console.log(findMatch(objSeven, objEight));