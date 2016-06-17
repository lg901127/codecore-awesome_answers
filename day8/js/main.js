document.addEventListener("click", contentLoadedHandler);

// functions
function contentLoadedHandler() {
  // var name = "Jacob";
  // var a = 3;
  // var b = 4;
  // var result = a * b;
  //
  // console.log("Hello, " + name + "! In case you forgot, " + a + " x " + + b + " is " + result + ".");
  //
  // document.getElementById("content").innerHTML = "Hello, " + name + "! In case you forgot, " + a + " x " + + b + " is " + result + ".";
//   var name = prompt("name");
//   console.log(name);
//   document.getElementsByTagName("h3")[0].innerHTML = "Your name is: " + name;
//   alert(name);
  var content = document.getElementById("content");
  var flag = true;
  var confirmation = confirm("are you sure you wanna enter the safe?");
  if (confirmation) {
  while (flag == true) {
    var password = prompt("Password: ");
    if (password == "opensesame") {
      alert("714");
      flag = false;
    }
    else {
      alert("Wrong");
    }
  }
}
  else {
    alert("canceled");
  }
  content.innerHTML = password;

}
