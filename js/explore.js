// take string to be reversed
// create an array of the letters
// reverse array
// make array back into a string
// print reversed letters


function reverseString(str) {

    var splitString = str.split(""); 
 
    var reverseArray = splitString.reverse(); 
 
    var joinArray = reverseArray.join(""); 
    
    return joinArray;
}

if (1==1) {
	console.log(reverseString("hello"));
} else {
	console.log("false")
}
