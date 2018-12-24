({
	validateAge : function(component, event, helper) {
        var inputAge = component.find('inputAge');
        var ageValue = inputAge.get('v.value');
        if(parseInt(ageValue) < 18){
            inputAge.set("v.errors", [{message:"Age should be more than 18...!!"}]);
            return;
                }
    }
})