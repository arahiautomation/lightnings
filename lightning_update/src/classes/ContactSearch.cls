public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName,String mailingpostalcode){
       List<Contact>conlst =[select id,Name,LastName,MailingPostalCode from Contact where LastName = :lastName and MailingPostalCode = :mailingpostalcode]; 
   
    return conlst;
    } 
    
    
  
}