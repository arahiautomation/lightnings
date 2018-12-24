public class WrapperTableController {
    
    public List<RowWrapper>rows;
      public List<Account>accs;
      public RowWrapper heading;
    
    public List<Account>getaccounts(){
        if(accs==null){
        accs=[select Name ,Phone,Type,BillingCity  from Account where BillingCity!=null LIMIT 3];
    }
        return accs;
    }
    //retrieve the RowWrapper containing wrapper acount headings
    public RowWrapper getheadwrap(){
        if(heading==null){
            heading = new RowWrapper();
            for(integer i=1;i<getaccounts().size();i++){
                heading.getvalue('Account'+i);
            }
           
        }
        return heading;
    }
    //retrieve the list of RowWrappers
    public List<RowWrapper>getrows(){
        if(rows==null){
            rows= new List<RowWrapper>();
            for(integer i=0;i<4;i++){
                rows[1].getvalue(getaccounts()[i].Name); 
                rows[2].getvalue(getaccounts()[i].phone);
                rows[3].getvalue(getaccounts()[i].Type);
                rows[4].getvalue(getaccounts()[i].BillingCity);
            }
           
        }
             return rows;
    } 
    
    public class RowWrapper{
        public List<String>values{get;set;} 
        public RowWrapper(){
          values=new List<String>(); 
        }
        public void getvalue(string value){
           
            values.add(value);
        }
    }
}