({
   /*call dateUpdate function on onchange event on date field*/ 
    
    dateUpdate : function(component, event, helper) {     
    var today = new Date();        
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //January is 0!
    var yyyy = today.getFullYear();
    var todayFormattedDate = yyyy+'/'+mm+'/'+dd  ;
    var todayFormattedDat = mm+'/'+dd+'/'+yyyy  ;
    var isDateError = component.get("v.dateValidationError");
    var datepickerDate = component.get("v.mysetDate");
        
     // if date is less then 10, then append 0 before date   
        if(dd < 10){
            dd = '0' + dd;
        } 
    // if month is less then 10, then append 0 before date    
        if(mm < 10){
            mm = '0' + mm;
        }
     
     
        if(isDateError != true){
            component.set("v.dateValidationError" , false);
         
            component.set("v.myDate",datepickerDate) ;
            component.find("aa").set("v.disabled", true);
        }else{
        if((component.get("v.myDate") != '' || component.get("v.mysetDate") != '' ) || 
            (component.get("v.myDate") < todayFormattedDate) ||
            (component.get("v.mysetDate") < todayFormattedDate)){
            component.set("v.dateValidationError" , true);
       
           // component.set("v.mysetDate",todayFormattedDat) ;
            component.set("v.myDate",todayFormattedDat) ;
            //
         
        }
        }
    },
    
    submit : function(component,event,helper){
      // get the 'dateValidationError' attribute value
        var isDateError = component.get("v.dateValidationError");
         if(isDateError != true){
            
   // if both date fields are empty, this logic puts the CURRENT TODAY DATE in both fields
           // alert('date is valid.. write your more logic here...');
          var today = new Date();        
          var dd = today.getDate();
          var mm = today.getMonth() + 1; //January is 0!
          var yyyy = today.getFullYear();
          var todayFormattedDat = mm+'/'+dd+'/'+yyyy  ;
            component.set("v.mysetDate",todayFormattedDat) ;
            component.set("v.myDate",todayFormattedDat) ;
             component.find("aa").set("v.disabled", true);
        }
        else{
             var today  = new Date();        
             var dd 	= today.getDate();
             var mm 	= today.getMonth() + 1; //January is 0!
             var yyyy   = today.getFullYear();
  var todayFormattedDat = mm+'/'+dd+'/'+yyyy  ;
            component.set("v.mysetDate",todayFormattedDat) ;
         //   component.set("v.myDate",todayFormattedDat) ;
        
        }
    }
})
