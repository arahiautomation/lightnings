({
// Code to handle validation of Words starting with Captial letters without numerical values
doaction:function(component ,event,helper){
    var inputf=component.find('inputfield');
    var value=inputf.get('v.value');
    $('inputfield').click(function () {
    $("input").val(function(i,val) {
        return val.toUpperCase();
    });
});
    var alphaExp =   /^[A-Z][a-zA-Z]*$/
     if(!$A.util.isEmpty(value)){//  
            if(value.match(alphaExp)){
			  inputf.set("v.errors", [{message: null}]);
              $A.util.removeClass(inputf, 'slds-has-error');
        }else{
             $A.util.addClass(inputf, 'slds-has-error');
             inputf.set("v.errors", [{message: "Please Enter a charecters only"}]);
            
        }
       }
}

})