//version 1.2

function spam_vaccine( theHREFArray, theTextArray, theQBulletPath) {
	var theHREF, theText, extraAttributes ;
	extraAttributes = "";
	if( theHREFArray.length == 1 ) {
		theHREF = theHREFArray[0] ;
	}
	else if (theHREFArray.length > 1 ) {
		theHREF = "mailto:" + theHREFArray[0] + "@" + theHREFArray[2] + "." + theHREFArray[4] + theHREFArray[3] ;
		extraAttributes = theHREFArray[5];
	}
	else {
		theHREF = "";
	}
	
	if( theTextArray.length == 1 ) {
		theText = theTextArray[0];
	}
	else if (theTextArray.length> 1 ) {
		theText = theTextArray[1] + theTextArray[0] + "@" + theTextArray[2] + "." + theTextArray[4] + theTextArray[3] ;
	}
	else {
		theText = theHREFArray[0] + "@" + theHREFArray[2] + "." + theHREFArray[4] ;
	}

	if(theHREF) {
		theText = "<a href=\"" + theHREF + "\"" + extraAttributes + ">" + theText ;
		if(theQBulletPath) {
			theText += '<img width="14" height="10" border="0" align="absmiddle" hspace="1" alt="" src="' + theQBulletPath + 'mailto.gif">' ;
		}
		theText += "</a>";
	}
	document.write(theText);
}