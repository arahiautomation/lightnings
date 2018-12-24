public class PageReference {
    public Account getaccount(){
        Account acc = [select id ,Name from Account where id =:apexPages.currentPage().getparameters().get('Id')];
        return acc;
    }
}