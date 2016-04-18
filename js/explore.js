

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
