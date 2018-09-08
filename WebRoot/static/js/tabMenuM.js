//Define Image Prefixes
var tab1Pre = "main_mail1";
var tab2Pre = "main_mail2";
var tab3Pre = "main_mail3";

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

var activeImgName = "img1";
var loaded = false;

if (document.images) {
    img1a = new Image();img1a.src ="../images/" + tab1Pre + "a.gif";
    img2a = new Image();img2a.src ="../images/" + tab2Pre + "a.gif";
    img3a = new Image();img3a.src ="../images/" + tab3Pre + "a.gif";
    img1b = new Image();img1b.src ="../images/" + tab1Pre + "b.gif";
    img2b = new Image();img2b.src ="../images/" + tab2Pre + "b.gif";
    img3b = new Image();img3b.src ="../images/" + tab3Pre + "b.gif";
}

function updateMailTabs(imgName) {
	if(imgName == activeImgName)
		return;
		
	if (document.images) {
		document[imgName].src = eval(imgName+"a.src");
        document[activeImgName].src = eval(activeImgName+"b.src");
		activeImgName = imgName;
    }
}