({
	socialchange : function(component, event, helper) {
		var ssnnum = component.find("social");
       var value= ssnnum.get("v.value");
        var ssnreg = /^\d{3}-\d{2}-\d{4}$/
    if(!$A.util.isEmpty(value)){  
            if(value.match(ssnreg)){
			  ssnnum.set("v.errors", [{message: null}]);
              $A.util.removeClass(ssnnum, 'slds-has-error');
        } 
        else
        {
             $A.util.addClass(ssnnum, 'slds-has-error');
             ssnnum.set("v.errors", [{message: "Please Enter valid ssn only"}]);
            
        }
       }
        
	}
})