//Define Image Prefixes
var tab1Client = "main_client1";
var tab2Client = "main_client2";

//checks browser and sets up layers accordingly
if (document.layers) {
	layerRef="document.layers.";
}

function showLayer(layerName){
	if(document.layers){
		eval(layerRef+layerName+'.visibility="visible"');
	}else{
		eval('document.getElementById('+ "'" + layerName + "'" +').style.visibility = "visible"');
	}
}
 	
function hideLayer(layerName){
	 if(document.layers){
		eval(layerRef+layerName+'.visibility="hidden"');
	}else{
		eval('document.getElementById('+ "'" + layerName + "'" +').style.visibility = "hidden"');		
	}
}

var activeClientName = "Client1";
var loaded = false;

if (document.images) {
    Client1a = new Image();Client1a.src ="../images/" + tab1Client + "a.gif";
    Client2a = new Image();Client2a.src ="../images/" + tab2Client + "a.gif";
    Client1b = new Image();Client1b.src ="../images/" + tab1Client + "b.gif";
    Client2b = new Image();Client2b.src ="../images/" + tab2Client + "b.gif";
}

function updateClientTabs(ClientName) {
	if(ClientName == activeClientName)
		return;
		
	if (document.images) {
		document[ClientName].src = eval(ClientName+"a.src");
        document[activeClientName].src = eval(activeClientName+"b.src");
		activeClientName = ClientName;
    }
}