trigger Leadupdate on Lead (before insert,before update) {
    
    for(Lead l:Trigger.new){
        
l.Salutation = 'Mr';        
    }
}