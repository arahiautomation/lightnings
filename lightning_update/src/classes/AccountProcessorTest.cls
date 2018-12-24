@isTest

public class AccountProcessorTest {
    @isTest public static void testmethod1(){
        Account acc = new Account();
        acc.name = 'Test Account';
        insert acc;
        Contact c = new Contact();
        c.AccountId = acc.id;
        c.FirstName = 'First';
        c.LastName = 'Last';
        insert c;
        List<Id>recordids= new List<Id>();
        recordids.add(acc.id);
        Test.startTest();
        AccountProcessor.countContacts(recordids);
        Test.stopTest();
        Account a =[select id,Number_of_Contacts__c from Account where id =:acc.id LiMIT 1]; 
        system.assertEquals(Integer.valueOf(a.Number_of_Contacts__c),1);
    }
}