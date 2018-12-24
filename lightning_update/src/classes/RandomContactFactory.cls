public class RandomContactFactory {

    public static List<Contact>generateRandomContacts(Integer n,String test){
        List<Contact>conlst = new List<Contact>();
        for(integer i=0;i<n;i++){
        Contact c = New Contact();
             test = 'Test'+i;
        c.FirstName = test;
        c.LastName = 'Test'+test;
        conlst.add(c);
        }
        return conlst;
    }
    
}