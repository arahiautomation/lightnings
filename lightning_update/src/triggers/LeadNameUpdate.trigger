trigger LeadNameUpdate on Lead (before insert) {
    for(Lead l:trigger.new){
       l.FirstName = 'Dr'+l.FirstName; 
    }
}