public class SelectOptionController {
    
    public List<SelectOption>countrylst{get;set;}
   public List<SelectOption>hobbielst{get;set;}
    public List<SelectOption>genderlst{get;set;}

    public String selectedCountry{get;set;}
    public String selectedHobbie{get;set;}
    public String selectedGender{get;set;}
    public string selectedvalues{get;set;}
    
    public SelectOptionController(){
    countrylst = new List<SelectOption>();
    hobbielst = new List<SelectOption>();
    genderlst = new List<selectOption>();
        
     countrylst.add(new selectOPtion ('','None'));
     countrylst.add(new SelectOption('India','India'));
     countrylst.add(new selectOption('USA','USA'));
        
        hobbielst.add(new selectOPtion ('','None'));
     hobbielst.add(new SelectOption('Swimming','Swimming'));
     hobbielst.add(new selectOption('Reading','reading')); 
        
        genderlst.add(new selectOPtion ('Male','Male'));
     genderlst.add(new SelectOption('Female','Female'));
    
    } 
    public pageReference show(){
        selectedvalues = 'selectedcountry'+selectedcountry+'seletedhobbie:'+selectedhobbie+'seletedgender:'+selectedgender;
    return null;
    }
}