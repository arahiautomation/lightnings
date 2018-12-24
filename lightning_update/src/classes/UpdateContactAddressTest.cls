@isTest
public class UpdateContactAddressTest {
    @testSetup
    static void setup(){
       List <Account>acclst =new List<Account>();
        List<Contact>conlst = new List <Contact>();
        for(integer i=0;i<10;i++){
           acclst.add(New Account(Name = 'Account'+i,
                                     Billingcity = 'Newyork',Billingcountry = 'USA'));
        }
        insert acclst;
        for(Account account :[select id From account]){
            Conlst.add(New Contact(firstName ='First',lastName = 'Last',accountid = account.id));
        }
        insert conlst;
    }
    static testmethod void test(){
        test.startTest();
        UpdateContactAddress uca = New UpdateContactAddress();
        Id BatchId = Database.executeBatch(uca);
        test.stopTest();
        system.assertEquals(10,[select count() from Contact where MailingCity = 'Newyork']);
    } 
}