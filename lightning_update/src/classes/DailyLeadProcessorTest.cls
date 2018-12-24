@istest
public class DailyLeadProcessorTest {
    public static String CRON_EXP = '0 0 0 15 3 ? 2020';
    @istest static void test(){
       List<lead>leadlst = new List<lead>();
        for(Integer i=0;i<200;i++){
            lead l = new lead(FirstName = 'Name'+i,Company = 'company',LastName = 'lastName',Status = 'Closed-Converted');
            leadlst.add(l);
        }
        insert leadlst;
        
        Map<id,Lead>maplead = new Map <id,Lead>(leadlst);
        List<id>leadids = new List<id>(maplead.keySet());
        
        Test.startTest();
        String jobid = system.schedule('SchedulableApextest', CRON_EXP, new DailyLeadProcessor());
        List<Lead>lds = [select id ,LeadSource from Lead where LeadSource = null LIMIT 200];
        system.assertEquals(200,lds.size());
        test.stopTest();
    }
}