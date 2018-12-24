({
	doinit : function(component, event, helper) {
       var pVals = [
            {text:"INDIA",value:"INDIA"},
            {text:"USA",value:"USA"}
            
        ];
        var pDep = {
            "INDIA" : [
                {text:"Hyderabad",value:"Hyderabad"},
                {text:"Warangal",value:"Warangal"}
            
            ],
            
            "USA" :[
                {text:"California",value:"California"},
                {text:"Virginia",value:"Virginia"}
            
            ]
            
        };
         component.set('v.parentOptions',pVals); 
        component.set('v.dependentPicklist',pDep);
           
	},
    pickchange : function(component, event, helper) {
      var parentvalue= component.find('parentPicklist').get('v.value');
        component.set('v.dependentOptions',component.get('v.dependentPicklist')[parentvalue]);
        if(parentvalue!=""){
            component.set('v.disabled',false);
            
        }
        else
            component.set('v.disabled',true);
    }
})