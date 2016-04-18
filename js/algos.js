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

log(longestStrIn(["a", "ab", "abcc", "abd"]));
log(longestStrIn(["123", "234", "345", "456"]));
log(longestStrIn(["1900", "a", "b", "1600"]));