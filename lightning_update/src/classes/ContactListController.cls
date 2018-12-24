public class ContactListController {
    @AuraEnabled
    public static List<Contact>getContactList(List<id>accountids){
        List<Contact>contactlist=[select id ,Name,Phone,Email From Contact where accountid in :accountids];    
      return contactlist;  
    }
}