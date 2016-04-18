
/* Pseudo code */
// function reverse takes string var type
	// new string container made to be filled
	// for loop iterates backwards through the string
		// and adds character by character to the new string
	// the end result is returning the newly created string
//

function reverse(str) {
	var finalStr = "";
	for(var i = str.length - 1; i > -1; i--) {
		finalStr += str[i];
	}
	return finalStr;
}

var something = "I like pie";
//console.log(something);

var gnihtemos = reverse(something);
//console.log(gnihtemos);

if(something.length == gnihtemos.length) { console.log(gnihtemos); }
