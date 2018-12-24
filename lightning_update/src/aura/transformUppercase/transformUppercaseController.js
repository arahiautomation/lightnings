({
    //capitalize all the input text (chatAt(0).to UpperCase)and capitalize only firstletter(+slice(1))//
	action : function(component, event, helper) {
		var inputtext = component.find("inputu");
        var value=inputtext.get('v.value').charAt(0).toUpperCase()+inputtext.get('v.value').slice(1);
        
        component.set("v.county",value);
	}
})