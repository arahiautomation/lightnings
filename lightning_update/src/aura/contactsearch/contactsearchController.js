({
	dosearch : function(component, event, helper) {
		var action=component.get("c.getcontactlist");
        action.setParams({searchkey:component.get("v.searchkey")});
        action.setCallback(this,function(response){
                           var state=response.getState();
                           if (state=="success") {
            var contacts=response.getreturnValue();
            var completeserachevent = component.get("contactsearchcomplete"); 
                completesearchevent.setparams({contacts:contacts});
                 compltesearchevent.fire();              
                               
        }               
        });
        $A.enqueueAction(action);
	}
})