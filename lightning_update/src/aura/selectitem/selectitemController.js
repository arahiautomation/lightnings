({
	loadOptions : function(component, event, helper) {
		var opts=[
            {value:"red",label:"red"},
            {value:"blue",label:"blue"},
            {value:"pink",label:"pink"}
            
        ];
        component.set("v.options",opts);
	}
})