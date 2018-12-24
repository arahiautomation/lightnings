public class ContactswithFirstNameS {
    public static List<Contact>getcontacts(List<Id>Accountids){
      List<Contact>contactlist=[select id,Accountid,Firstname,Lastname from Contact where Accountid in :Accountids];
       return contactlist;   
    } 
}