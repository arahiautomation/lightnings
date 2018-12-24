trigger NewAccounttrigger on Account (before insert){
    for(Account a :trigger.new){
        if(  a.Industry == 'Education'){
       
        a.addError('Account can not be inserted');
             
        }
    }  
   
}