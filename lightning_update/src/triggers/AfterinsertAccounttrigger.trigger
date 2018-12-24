trigger AfterinsertAccounttrigger on Account (After insert) {
List<Opportunity>opplst = new List<Opportunity>();
    for(Account a : trigger.new){
        Opportunity opp = new opportunity();
        opp.Name = 'New Opportunity';
        opp.Amount = 10000;
        opp.StageName = 'closed-won';
        opp.CloseDate= date.today();
        opp.AccountId = a.Id;
        opplst.add(opp);
    }
    insert opplst;
}