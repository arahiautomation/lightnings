public class AccountProcessor {
@future
    public static void countContacts(List<Id>recordids){
       
      List<Account>acclst = [select id ,Number_of_Contacts__c,(select id from Contacts)From Account where Id = :recordids  ];
        for(Account acc :acclst){
            List<Contact>conlst = acc.contacts;
            acc.Number_of_Contacts__c = conlst.size();
           update acclst;
            
        }  
    }   
}