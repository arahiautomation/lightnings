@istest
public class TestRestrictContactByName {

    @isTest public static void method(){
       Contact c = new Contact();
        c.LastName = 'InvalidName';
        c.FirstName = 'Test';
      
    
    Test.startTest();
        try{
           insert c; 
        } 
        catch(exception e){
         test.stopTest();   
        }
   
        
    
    }
}