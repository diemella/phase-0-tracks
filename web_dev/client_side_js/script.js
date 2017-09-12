console.log("Hey, this works correctly!");

var list = document.getElementsByTagName('ul');
var list0 = list[0];
list0.style.color = "blue";


var newListItem = document.createElement('li');
var listText = document.createTextNode("Celebrate good times, c'mon!");
newListItem.appendChild(listText);
var stage1 = document.getElementsByTagName("ol");
var orderdList = stage1[0];
orderdList.appendChild(newListItem);


function splat(event) {
  event.target.src = "splat.jpg";
};

var photo = document.getElementById("picture");
photo.addEventListener("click", splat);