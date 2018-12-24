trigger NewTrigger on Account (before insert) {
    for(Account a:trigger.new){
        a.Type= 'prospect';
    }
}