trigger DeleteAccounttrigger on Account (before delete) {
    for(Account a:trigger.old){
        if(a.Industry != 'Finance'){
           a.addError('account cannot be deleted') ;
        } 
        
    }
}