
// Only take Numbers in the input text field....
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

// the minimum lenght of the name must greater the 2....

function isNumberD(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 47 || charCode > 57)) {
        return false;
    }
    return true;
}


// Field take on characters....

function isCharacter(evt){
	 evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
  if ((charCode == 32) ||  (charCode==8)  || (charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122)) {
 
        return true;
    }
	
    return false;
	
}
