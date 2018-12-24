trigger OppwithAccountIndustry on Opportunity (before insert) {
    
    for(opportunity o:trigger.new){
       ID aid = o.AccountId;
Account a =[select Name,Industry from Account where id = :aid];
        if(a.Industry == 'Education'){
           o.addError('No opportunity with account industry having education'); 
        }
    }
}