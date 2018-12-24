public class AccountRedirect {
    Account acc;
    public Account getAccount(){
        if(acc == null){
           acc = new Account();
           
        }
        return acc;
    }
        public  PageReference save(){
           insert acc;
       return null;
        }
    
}