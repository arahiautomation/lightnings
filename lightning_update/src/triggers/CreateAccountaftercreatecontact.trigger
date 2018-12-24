trigger CreateAccountaftercreatecontact on Contact (before insert) {
List<Contact>Cons = New List<Contact>();
    for(Contact c:trigger.new){
        if(string.isBlank(c.accountid)){
            Cons.add(c);
        }
        
    }
    if(Cons.size()>0){
     List<Account>Acclst = new List<Account>();
        Map<String,Contact>conlst = New Map<String,Contact>();
        for(Contact c :Cons){
            String AccountName = c.FirstName+c.LastName;
            conlst.put(AccountName,c);
            Account a = new Account();
            a.name = AccountName;
            Acclst.add(a);
        }
        insert Acclst;
    }
}