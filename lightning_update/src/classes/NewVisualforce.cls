public class NewVisualforce {
    public static List<Account>getaccounts(){
        List<Account>accounts = New List<Account>();
        accounts = [select id ,Name ,phone from Account where Name LIKE 's%'];
        return accounts;
    }
}