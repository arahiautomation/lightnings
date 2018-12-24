public class UpdateParentAccount implements Queueable{
public List<Account>accounts;
   id parentid;
    public UpdateParentAccount(List<Account>records,ID id){
       this.accounts = records;
        this.parentid = id;
    }
    public  void execute(QueueableContext context){
        for(Account account: accounts){
            account.Parentid = 'parent';
        }
        update accounts;
    }
}