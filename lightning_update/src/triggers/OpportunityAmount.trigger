trigger OpportunityAmount on Opportunity (before insert) {
    for(Opportunity o :trigger.new){
        if(o.amount<5000){
           o.addError('opportunity amount should not be lessthan 5000'); 
        }
    }
}