var xhttp;

function createConnection() {
	
	if (window.XMLHttpRequest) {
		xhttp = new XMLHttpRequest();
		
	}else {
		
		alert("There is a connection problem");
	}
}

function addHeader() {
	
	cerateConnection();
	xhttp.onload = function() {
		
		document.getElementById("header_view").innerHTML = xhttp.responseText;
	}
	xhttp.open("GET", "header.jsp", true);
	xhttp.send();
}

