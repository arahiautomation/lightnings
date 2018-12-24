global class DailyLeadProcessor implements Schedulable{
    global  void execute(SchedulableContext context){
        List<Lead>leads = new List<Lead>();
       List<Lead> leadlst = [select id ,FirstName,Leadsource  from Lead where LeadSource = null LIMIT 200];
        for(lead l :leadlst){
            l.LeadSource = 'Dreamforce';
            leads.add(l);
        }
        update leads;
    }
}