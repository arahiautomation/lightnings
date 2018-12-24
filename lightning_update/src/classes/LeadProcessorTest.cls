@isTest
public class LeadProcessorTest {
@TestSetup
    static void setup(){
      List<Lead>lead = new List<Lead>();
        
        for(Integer i=0;i<200;i++){
          lead.add(new Lead(LastName ='lead',Company = 'company',Status ='Closed-Converted'));  
        }
        insert lead;
    }
    static testmethod void test(){
      test.startTest();
        LeadProcessor lp = New LeadProcessor();
        id batchid = database.executeBatch(lp,200);
        test.stopTest();
        system.assertEquals(200,[select count() from Lead where LeadSource = 'Dreamforce']);
    }
}