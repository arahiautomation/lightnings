public class wrapaccounts {
    public List<innerclass>innerclasslst{get;set;}
    public List<Account>selectedlst{get;set;}
    public wrapaccounts(){
      innerclasslst = new List<innerclass>(); 
        List<Account>acc = [select id ,Name ,Type,phone from account ];
        for(Account a :acc){
            innerclasslst.add(new innerclass(a));
        } }
        public void getaccselected(){
            selectedlst = new List<Account>();
            for(innerclass i :innerclasslst){
                if(i.selected==true){
                    selectedlst.add(i.acc);
                } 
            }
        }
    
    public class innerclass{
        public Account acc{get;set;}
        public boolean selected{get;set;}
        
        public innerclass(Account acc){
           this.acc = acc;
            this.selected = false;
        }
    }   
}