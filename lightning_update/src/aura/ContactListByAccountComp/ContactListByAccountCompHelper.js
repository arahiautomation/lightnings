({
	fetchContacts : function(component,event,helper) {
		//callserver method and assign it to varible action
		var action = component.get("c.getContactListByAccount");
        var accountid = component.get("v.recordId");
        action.setParams({
            accountids:accountid
        });
        action.setCallback(this,function(response){
           var state = response.getState(); 
          //  getting the list of values and storing in JS variable
            if( state ==='SUCCESS'){
                var contactlist= response.getReturnValue();
                console.log(contactlist);
              //  set the list attribut in the component with value returned by function
                component.set("v.contactlist",contactlist);
            }
            else{
                alert("error in getting data");
            }
        });
        //adding variable action to global actions
        $A.enqueueAction(action);
	},
    saveContacts:function(component,event,helper){
        var contactList = component.get("v.contactlist");
       
        var recordViewForm = component.find("recordViewForm");
        var recordEditForm = component.find("recordEditForm");
        var toastEvent = $A.get('e.force:showToast');
        var saveAction = component.get("c.saveContacts");
        saveAction.setParams({
            contactlist:contactList
        });
        saveAction.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                var dataMap = response.getReturnValue();
                if(dataMap.status=='success'){
                    $A.util.addClass(recordEditForm,'formHide');
                    $A.util.removeClass(recordViewForm,'formHide');
                    btn.set('v.name','Edit');
                    btn.set('v.label','Edit');
                    toastEvent.setParams({
                        'title':"Success",
                        'type':"success",
                        'mode':"dismissable",
                        'message':dataMap.message
                    });
                    toastEvent.fire();
                }
                else if(dataMap.status =="error"){
                   toastEvent.setParams({
                        'title':"Error",
                        'type':"Error",
                        'mode':"dismissable",
                        'message':dataMap.message
                    }); 
                    toastEvent.fire();
                }
            }
            else{
                alert("error in data");
            }
            
        });
        $A.enqueueAction(saveAction);
    },
    removeContacts:function(component,event,helper){
    var contactsToDelete = component.find("deleteContact");
    var IdToDelete = [];
    if(contactsToDelete.length!=undefind){
    for(var i=0;i<contactsToDelete.length;i++){
    if(contactsToDelete[i].get('v.checked'))
    IdsToDelete.push(contactsToDelete[i].get("v.value"));
}
    
} 
    else{
    if(contactsToDelete.get("v.checked"))
    IdsToDelete.push(contactsToDelete.get("v.value"));
}
    var toastEvent = $A.get("e.force:showToast");
    var deleteAction = component.find("c.deleteContactList");
    deleteAction.setParams({
    contactIds:IdsToDelete
});
deleteAction.setCallback(this,function(response){
    var state = response.getState();
    if(state ==="SUCCESS"){
        var dataMap = response.getReturnValue();
        if(dataMap.status=="success"){
            toastEvent.setParams({
                'title':'Success',
                'type' :'success',
                'mode':'dimissible',
                'message':dataMap.message
            });
            toastEvent.fire();
            window.location.reload();
            
        }
        else if(dataMap.status =="error"){
            toastEvent.setParams({
               'title':'Error',
                'type' :'error',
                'mode':'dimissible',
                'message':dataMap.message 
            });
            toastEvent.fire();
        }
        else("error in data")
        
    }
});
  $A.enqueueAction(deleteAction);      

}
})