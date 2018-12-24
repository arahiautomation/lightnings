public class MyContactController {
@AuraEnabled
    public Static List<Contact>getcontactlist(List<Id>accountId){
      List<Contact>contactlist = [select id ,FirstName,LastName,Phone,Email from Contact Where Id in :accountId];  
        
    return contactlist;
    }
}