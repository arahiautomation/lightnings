public class VFclass {
    public Static List<Account>getaccounts(){
        List<Account>acclst= [select id ,Phone,Name from Account];
        return acclst;
    } 
}