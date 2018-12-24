public class NewApex {
    public static List<Contact>getcontacts(ID recordid){
        List<Contact>contacts= new List<Contact>();
         contacts=[select id ,FirstName,LastName from Contact where Accountid=:recordId];
        return contacts;
    }
}