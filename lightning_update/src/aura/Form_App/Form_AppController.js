({
	continueForm: function(component, event, helper) {
        
		var newcontact= component.get("v.contact");
        var action=component.get("c.createContactRecord");
        var toastEvent= $A.get("e.force:showToast");
        action.setParams({
            newcontact:newcontact
        });
        
        action.setCallback(this,function(response){
            var state= response.getState();
            if(state==="SUCCESS"){
                var dataMap=response.getReturnValue();
                if(dataMap.status=="success"){
                    toastEvent.setParams({
                        "type":"success",
                        "title":"success",
                        "mode":"dismissable",
                        "message":dataMap.message
                        
                    });
                    toastEvent.fire();
                }
                else if(dataMap.status=="error"){
                     toastEvent.setParams({
                        "type":"error",
                        "title":"error",
                        "mode":"dismissable",
                        "message":dataMap.message
                     });
                    toastEvent.fire();
                }
                
            }
            else{
                alert('error in creatre record');
            }
        });
        $A.enqueueAction(action);
        
	}
})