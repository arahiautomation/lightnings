Global class LeadProcessor implements Database.Batchable<sobject>{
    
    
    global Database.QueryLocator start(Database.BatchableContext bc){
       return database.getQueryLocator('select id, LastName,Company,Status from Lead'); 
    }
        global static void execute(Database.BatchableContext bc,List<Lead>scope){
            List<Lead>leadlst = new List<Lead>();
            for(Lead lead :scope){
                lead.LeadSource = 'Dreamforce';
                leadlst.add(lead);
               
            }
            
            update leadlst;
        } 
    global static void finish(database.BatchableContext bc){
        
        AsyncApexJob job = [select id ,Status ,NumberOfErrors,TotalJobItems,JobItemsProcessed 
                           from AsyncApexJob where id = :bc.getJobId()];
    }
    
}