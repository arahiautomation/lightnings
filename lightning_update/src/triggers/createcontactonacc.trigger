trigger createcontactonacc on Contact (before insert) {
    for(Contact c:trigger.new){
        Id aid = c.AccountId;
  Integer con= [select count() From Contact where id = :aid ];
        if(con>1){
           c.LastName = 'Lastname';
           c.FirstName = 'FirstName' ;
            c.Email = 'Email@email.com';
            c.Only_Default_Contact__c =False;
        }   
    }
}