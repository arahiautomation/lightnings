public class Accountclass {
    string keyword;
    List<Account>acc= new List<Account>();
    public String getkeyword(){
        return keyword;
    }
    public void setkeyword(String keyword){
        this.keyword = keyword;
    }
    public  pageReference search(){
        acc =[FIND :keyword IN ALL FIELDS RETURNING ACCOUNT(Name,phone,type,Industry)][0];
        return null;
    }
    public List<Account> getacc(){
         return acc;
    }
    public pageReference searchall(){
      acc  =[select id,Name,Phone,Type,industry from Account];
        return null;
    }
}