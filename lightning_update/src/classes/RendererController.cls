public class RendererController {
    public Account accrec{get;set;}
    public Boolean showpageBlockFlag{get;set;}
    public RendererController(){
      accrec = [select id ,Name ,AccountNumber from Account LIMIT 1];  
       showpageBlockFlag = false; 
    }
    public void showBlockMethod(){
        showpageBlockFlag = true;
    }
}