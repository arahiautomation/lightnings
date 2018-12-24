trigger AccountIndustry on Account (before insert) {
    for(Account a: trigger.new){
        if(a.Industry == 'Education'){
          a.addError('Account with education industry can not be inserted');  
        }
    }
}