global class UpdateContactAddress implements Database.Batchable<sObject>,Database.Stateful{
global integer recordprocessed = 0;
    global Database.QueryLocator start(Database.BatchableContext bc){
        return database.getQueryLocator('SELECT ID, BillingStreet, BillingCity, BillingState,' +
            'BillingPostalCode, (SELECT ID, MailingStreet, MailingCity, ' +
            'MailingState, MailingPostalCode FROM Contacts) FROM Account ' + 
            'Where BillingCountry = \'USA\'');
                                       
                                    } 
    global void Execute(Database.BatchableContext bc,List<Account>scope){
        List<Contact>conlst = new List<Contact>();
        for(Account account: scope){
            for (Contact contact: account.contacts){
                contact.MailingCity = account.BillingCity;
                contact.MailingPostalCode = account.BillingPostalCode;
                contact.MailingStreet = account.BillingStreet;
                contact.MailingState = account.BillingState;
                conlst.add(contact);
                recordProcessed = recordProcessed +1;
            }
        }
        update conlst; 
    }
    global void finish(database.BatchableContext bc){
        system.debug('recordprocessed;'+recordprocessed);
        AsyncApexJob job  = [select id ,Status ,NumberOfErrors,JobItemsProcessed,TotalJobItems,
                             CreatedBy.Email from AsyncApexJob where id =:bc.getJobId()];
        
                  
        
    }
}