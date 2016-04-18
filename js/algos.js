function log(str) {console.log(str)}

function longestStrIn(arr) {
	if(arr.length != 0) {
		var highestIndex = 0;
		for(var i = 0; i < arr.length; i++) {
			if(arr[i].length > arr[highestIndex].length) highestIndex = i;
		}
		return arr[highestIndex];
	} else {
		return null;
	}
}


function findKeyValueMatch(obj1, obj2) {
	var matchFound = false;
	for(var key1 in obj1){
    for(var key2 in obj2){
	    if(key1 == key2 && obj1[key1] == obj2[key2]) matchFound = true;
		}
	}
	return matchFound;
}


log(longestStrIn(["a", "ab", "abcc", "abd"]));
log(longestStrIn(["123", "234", "345", "456"]));
log(longestStrIn(["1900", "a", "b", "1600"]));

var obj1 = {cow: "moo", alive: true}
var obj2 = {cow: "moo", alive: false}
var obj3 = {cow: "bleh", alive: true}
var obj4 = {cow: "bleh", alive: false}
log(findKeyValueMatch(obj1, obj2));
log(findKeyValueMatch(obj1, obj3));
log(findKeyValueMatch(obj1, obj4));