({
	getContactList : function(component, event, helper) {
	helper.fetchContacts(component,event,helper);	
	},
    
    newContact:function(component,event,helper){
       // Using global action for createRecord force:createRecord
        var createcontact = $A.get("e.force:createRecord") ;
        createcontact.setParams({
            "entityApiName" :"Contacts",
            "defaultFieldValues":{
                "AccountId":component.get("v.recordid")
            }
        });
        createcontact.fire();
    },
    editContact:function(component,event,helper){
        var btn = event.getSource();
        var name = btn.get('v.name');
        var recordViewForm = component.find('recordViewForm');
        var recordEditForm = component.find('recordEditForm');
        if(name=='edit'){
         $A.util.addClass(recordViewForm,'formHide');
         $A.util.removeClass(recordEditForm,'formHide');
            btn.set('v.label','Save');
            btn.set('v.name','save');
        }
        else if(name=='save'){
             helper.saveContacts(component,event,helper);
        }
        
    },
    deleteContacts:function(component,event,helper){
    helper.removeContacts(component,event,helper);
    }
})