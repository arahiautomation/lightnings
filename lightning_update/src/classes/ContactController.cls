public class ContactController {
@AuraEnabled
    public static List<Contact>findall(){
        return[select id ,name,phone from Contact LIMIT 20];
    }
    @AuraEnabled
    public static List<Contact>findByName(String searchkey){
        String name='%'+searchkey+'%';
        return[select id ,Name ,Phone from Contact where name LIKE:name LIMIT 20];
    }
    @AuraEnabled
    public static List<Contact>findById(String ContactId){
        return[select id ,Name,Phone,MobilePhone,title,Account.Name from Contact where Id=:contactid];
    }
}