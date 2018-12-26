({
	myAction : function(component, event, helper) {
	var input = component.find("field");
	var value=input.find("v.value").parseint;
	component.set("v.formattedvalue",value);
	
		
	}
})