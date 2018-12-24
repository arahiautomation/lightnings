public class AddPrimaryContact implements queueable{
   public Contact c;
    public string state;
    public AddPrimaryContact( Contact c,String State){
        this.c = c;
        this.state = state;
    }
    public void execute(QueueableContext context){
        List<Account>acc = [select id ,Name ,(select id ,FirstName,LastName from Contacts) From Account where
                             BillingState = :state LIMIT 200];
        List <Contact>conlst = new List<Contact>();
        for(Account account :acc){
            
            Contact cont = c.clone(false,false,false,false);
            cont.AccountId = account.Id;
            conlst.add(cont);
        }
        insert conlst;
    }
}