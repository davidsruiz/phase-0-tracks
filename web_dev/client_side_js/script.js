var slams = document.getElementById("slams");
slams.style.border = "3px solid blue";

function changeBackgroundColor(event) {
	event.target.style.backgroundColor = "green";
}

slams.addEventListener("mouseover", changeBackgroundColor);