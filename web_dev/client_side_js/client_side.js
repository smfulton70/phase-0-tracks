
//Release 1: Change the List Style Type of the UL to square, instead of the default disc.

var list = document.getElementsByTagName("ul");
list[0].style.listStyleType = "square";

//Release 2: Invite user to hover over my image to make me smile (actually, it just swaps pictures)
//and change the text to magenta. Moving the mouse out changes the text and picture back.

function swapPicture(event) {
	event.target.src = "scott_2.jpg";
	var text=document.getElementById("text");
	text.style.color="magenta";
}

function swapPictureBack(event) {
	event.target.src = "scott_1.jpg";
	text.style.color="black";
}

var photo = document.getElementById('scott_pic');
photo.addEventListener("mouseenter", swapPicture);
photo.addEventListener("mouseleave", swapPictureBack);

