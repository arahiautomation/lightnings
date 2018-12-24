({
	fetchcontacts : function(component,event,helper) {
		var action = component.get("c.getcontactlist");
        var accountId = component.get("v.recordId");
        action.setParams({
            accountIds:accountId
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
              var contactList = response.getReturnValue();
                console.log(contactList);
                component.set("v.contactlist",contactList);
            }
            else{
                alert("errror in data");
            }
        });
        $A.enqueueAction(action);
	}
})