trigger Taskcreation on Opportunity (before insert) {
   
        List<Opportunity>opps= [select id ,StageName from Opportunity where id IN :trigger.New And StageName = 'Closed won'];
    for(Opportunity o :opps){
       Task t = new task() ;
        t.WhatId = o.id;
        t.Subject = 'Subject';
        insert t;    
    }
}