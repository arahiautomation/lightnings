trigger ClosedOpportunitytrigger on Opportunity (after insert) {
   
    List<task>tasklst = new List<Task>();
    for(Opportunity o :Trigger.new){
    if(o.StageName == 'Closed Won'){
            
                Task t = new Task();
                t.WhatId = o.id ;
                t.Subject = 'Follow Up Test Task';
                tasklst.add(t);
                    
        } 
        
        }
    if(tasklst.size()>0){
        insert tasklst;
    }
            
    
}