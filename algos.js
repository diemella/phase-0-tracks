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


// FUNCTION

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

// DRIVER CODE

var test_arr = ["long phrase","word", "longer phrase","longest phrase", "a phrase"];

console.log(findLongest(test_arr));