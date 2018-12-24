global class BatchApex implements database.Batchable<sObject> {
    global database.QueryLocator start(Database.BatchableContext BC){
       String query = 'select id,Name,Phone from Account'; 
        return database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC,List<Account>Scope){
    
        for(Account a:Scope){
            a.Name =a.Name+ 'batchjob';
          
             }
        update scope;
       
    }
    global void finish(database.BatchableContext BC){
        
    }
}