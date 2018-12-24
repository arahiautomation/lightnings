public class DisplayController {
 
 
    public String accname{get;set;}
    public List<Account>acc{get;set;}
    public void getdata(){
        acc = [select id,Name from Account where Name = :accname];
        
    }
}