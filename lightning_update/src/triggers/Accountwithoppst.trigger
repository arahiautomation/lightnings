trigger Accountwithoppst on Opportunity (before insert,before update,before delete) {
    
  List<Account> accountWithOpps = [select id, name, (select id, name, closedate,
	         stagename  from Opportunities  where accountId IN :Trigger.newMap.keySet()

	         and  (StageName='Closed - Lost' or StageName = 'Closed - Won'))

	         from Account where Id IN :Trigger.newMap.keySet()];
    for(Account a :accountwithopps){
        for(Opportunity o :a.Opportunities){
            if(o.StageName == 'ClosedLost'){
                //some logic here
            }
            if(o.StageName == 'Closed Won'){
               //some logic here 
            }
        }
    }
                               
}