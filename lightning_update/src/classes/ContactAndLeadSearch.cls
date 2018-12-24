public class ContactAndLeadSearch {
    public static List<List<SObject>>searchContactsAndLeads(String smith){
       List<List<SObject>> conandleadsearch = [Find 'smith'IN all fields RETURNING Contact,lead];
      Return conandleadsearch;
    }
}