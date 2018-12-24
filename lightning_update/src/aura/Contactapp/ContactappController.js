({
	handlerevent : function(component, event, helper) {
		var contactlist=event.getParam("contacts");
        component.set("v.appcontacts",contactlist);
        component.set("v.showtable","true");
	}
})