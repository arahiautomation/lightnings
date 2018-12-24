public class AccountHandler {
    public Static Account insertNewAccount(String Name){
       Account a = new Account();
        a.Name = Name;
        try{
          Insert a;  
        }
        catch(Exception e){
           return null; 
        }
        return a;
    } 
    
}