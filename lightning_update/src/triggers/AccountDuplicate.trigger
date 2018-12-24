trigger AccountDuplicate on Account (before insert) {
    for(Account a:trigger.new){
        
        List<Account>acclst = [select id ,Name,Rating from Account where Name =:a.Name AND Rating =:a.Rating];
        if(acclst.size()>0){
           a.addError('account can not be duplicated'); 
        }
    }
}