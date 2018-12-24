public class NewCaseListController {
    public  List <Case> getNewCases(){
        List<Case> caselst = [select id,CaseNumber,Status From Case Where Status = 'New'];
        system.debug(caselst);
        return caselst;
    }
}