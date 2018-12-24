@istest
public class UpdateParentAccountTest {
@testSetup
    static void setup(){
       
    List<Account> accounts = new List<Account>();
        // add a parent account
        accounts.add(new Account(name='Parent'));
        // add 100 child accounts
        for (Integer i = 0; i < 100; i++) {
            accounts.add(new Account(
                name='Test Account'+i
            ));
        }
        insert accounts;
    }
    static testmethod void test(){
        Id parentid = [select id from account where Name = 'parent'][0].id;
        List<Account>accounts = [select id ,Name from Account where name like 'TestAccount%' ];
         UpdateParentAccount upc = new UpdateParentAccount(accounts,parentid);
        test.startTest();
        
        system.enqueueJob(upc);
        test.stopTest();
    } 
}