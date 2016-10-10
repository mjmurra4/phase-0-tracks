//function takes an array
//sorts the array
//function sorts array by placing the longer words in front of shorter ones
//sets longest word as first word in the newly sorted array
//returns new longest variable






function longest_word(arr) {
var sorted = arr.sort(function(a, b){
  return b.length - a.length;
  
});

var longest = sorted[0]
console.log(longest)
}
// arr = ["long phrase","longest phrase","longer phrase"]
// longest_word(arr);

// arr = ["bird","plane","superman"]
// longest_word(arr);

// arr = ["Panther","Cardinal","Bear"]
// longest_word(arr);

// find the value of 1st array
// find the value of 2nd array
// compare values
// if they match, return true
// if no match, return false







// This is incomplete I spent so much time preparing for the Ruby assessment
// I don't have enough time to give this proper thought and am not learning right now
// first thing tomorrow I will tackle this, but if you are reading this in the meantime,
//my bad. It will be finished properly soon
function compare(arr1, arr2) {
	for ( var i = 0; i < arr1.length; i++) {
		if arr1[i] == arr2[i] {
			console.log('true')
		}
		else {
			console.log('false')
		}
	}
}

var array1 = {name: 'Spot', 'age': 3, isGoodDog: true};
var array2 = {name: 'Spot', 'age': 3, isGoodDog: true};
compare2 = new compare;
console.log(compare2(array1, array2));
