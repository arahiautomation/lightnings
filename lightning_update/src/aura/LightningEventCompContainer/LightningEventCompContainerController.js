({
	doinit : function(component, event, helper) {
		    component.set("v.myColumns",[
                {label: "sNo.", fieldName: "sno", type: "number"},
                {label: "Name Of Source", fieldName: "source", type: "text"},
                {label: "Amount", fieldName: "amount", type: "number"}
            ]);
        component.set("v.incomes",[{
               sno: 1,
             source: "regular Job",
             amount: 10000
               },
            {   
                sno: 2,
                source: "Other Job",
                amount: 20000
            }
        ]);
	},
    handleRegisteredEvent:function(component,event,helper){
        alert("event in the source component the fire the event");
    },
    toggleIncomeForm:function(component,event,helper){
        var incomeform = component.find("incomeForm");
        $A.util.toggleClass(incomeform,'hide');
        
        
    },
    fireTotalIncome:function(component,event,helper){
        var incomes = component.get("v.income");
        var totalIncome=0;
        for(var i=0;i<incomes.length;i++){
            totalIncome +=incomes[i].Amount;
            }
        var LightningComponentEvent = component.getEvent("LightningComponentEvent");
        LightningComponentEvent.setParams({
            totalIncome:totalIncome
        });
        LightningComponentEvent.fire();
    }
})