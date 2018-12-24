({
		validateEmail : function(component, event, helper) {
		var isValidEmail = true; 
        var emailField = component.find("leadEMail");
        var emailFieldValue = emailField.get("v.value");
        // Store Regular Expression That 99.99% Works. [ http://emailregex.com/] 
        var regExpEmailformat = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;  
        // check if Email field in not blank,
        // and if Email field value is valid then set error message to null, 
        // and remove error CSS class.
        // ELSE if Email field value is invalid then add Error Style Css Class.
        // and set the error Message.  
        // and set isValidEmail boolean flag value to false.
        
        if(!$A.util.isEmpty(emailFieldValue)){   
            if(emailFieldValue.match(regExpEmailformat)){
			  emailField.set("v.errors", [{message: null}]);
              $A.util.removeClass(emailField, 'slds-has-error');
              isValidEmail = true;
        }else{
             $A.util.addClass(emailField, 'slds-has-error');
             emailField.set("v.errors", [{message: "Please Enter a Valid Email Address"}]);
             isValidEmail = false;
        }
       }
        
     // if Email Address is valid then execute code     
       if(isValidEmail){
         // code write here..if Email Address is valid. 
       }
	},
})