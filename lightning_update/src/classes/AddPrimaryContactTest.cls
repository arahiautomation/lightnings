@istest

public class AddPrimaryContactTest {
@istest
    static void test(){
       List<Account>acclst = New List<Account>();
        for(Integer i=0;i<50;i++){
          acclst.add(new Account(Name ='Test'+i,BillingState = 'CA')) ; 
        }
        for(Integer j=0;j<50;j++){
            acclst.add(new Account(Name ='test'+j,BillingState = 'NY'));
        } 
        insert acclst;
        Contact c = New Contact();
        c.FirstName = 'Name';
        c.LastName = 'lastname';
        insert c;
        String state = 'CA';
      AddPrimaryContact apc = new AddPrimaryContact(c,state); 
        test.startTest();
        system.enqueueJob(apc);
        test.stopTest();
    }
}