public class ContactListByAccount {
@AuraEnabled
    public static List<Contact> getContactListByAccount(List<Id>accountids){
       List<Contact>conlst=[select Id,FirstName,LastName,AccountId,phone,Email from Contact where AccountId in:accountids];
        return conlst;
    } 
    @AuraEnabled
    public static Map<String,String>saveContacts(List<Contact>conlst){
       Map<String,String>resultMap = new Map<String,String>();
        try{
            update conlst;
            resultMap.put('status','success');
            resultMap.put('message','data saved');
        }
        catch(exception e){
            resultMap.put('status','error');
            resultMap.put('message',e.getMessage());
        }
        return resultMap;
    }
    @AuraEnabled
    public static Map<String,String>deleteContactList(List<Id>contactIds){
        List<Contact>contactsToDelete = [select Id From Contact where Id in:contactIds];
        Map<String,String>resultMap = new Map<String,String>();
        try{
            delete contactsToDelete;
          resultMap.put('state','success');
          resultMap.put('message','contacts deleted successfully');
        }
    catch(Exception e){
        resultMap.put('state','error');
        resultMap.put('meassage','e.getmessage()');
    }
        return resultMap;
    }


}