trigger ContactCreation on Account (After insert,After update) {
List<Contact>conlst=New List<Contact>();
   public static  Map<Id,Decimal>accmap = new Map<Id,Decimal>();
    for(Account a:trigger.New){
        accmap.put(a.Id,a.NumberofLocations__c);
        
    }
    if(accmap.size()>0&&accmap.size()!=null){
        for(id accid:accmap.keySet()){
            integer i;
            for(i=0;i<accmap.get(accid);i++){
              Contact c= new Contact();
                c.Accountid = accid;
                c.LastName = 'lastname'+i;
                conlst.add(c);
            } 
        }
    }
    if(conlst.size()>0&&conlst.size()!=null){
      insert conlst;  
    }
}