public class Controllerclass {
   List<Account>accs;
    List<Contact>cons;
    
    public List<Account>getaccts(){
        accs = [select id,Name, Type ,Phone from account];
        return accs;
    }
    public List<Contact>getcontacts(){
        cons = [select Name,Accountid ,FirstName from Contact ];
        return cons;
    }
}