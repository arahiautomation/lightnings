({
doinit : function(component, event, helper) {
		var action = component.get(c.findall);
    action.setCallback(this,function(a){
    component.set("v.contacts",a.getreturnValue());                  
    });
    $A.enqueueAction(action);
}
})