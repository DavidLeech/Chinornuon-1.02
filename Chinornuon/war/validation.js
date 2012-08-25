function validate_Nameform(checkForm) {
    var fill =/^[0-9]+$/;

    if(document.checkForm.SystemSize.value=="") {
 	   //document.getElementById("firstnameError").style.visibility = "visible";
   	 return false;
    }else if(!fill.test(document.checkForm.SystemSize.value)) { 
 	   //document.getElementById("firstnameError1").style.visibility = "visible";
   	   document.checkForm.SystemSize.focus(); return false; 
    } 
    if(document.checkForm.FeedInTariff.value=="") {
 	   //document.getElementById("lastnameError").style.visibility = "visible";
            return false;
    }else if(!fill.test(document.checkForm.FeedInTariff.value)) { 
 	  // document.getElementById("lastnameError1").style.visibility = "visible"; 
            document.checkForm.FeedInTariff.focus(); return false; 
    }
}
