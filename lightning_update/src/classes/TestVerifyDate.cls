@istest
public class TestVerifyDate {
    @istest public Static void method1(){
        date date1 = date.today();
        date date2 = date1.addDays(29);
        date t = VerifyDate.CheckDates(date1,date2);
        system.assertEquals(t, date2);
    }
    
    @istest public static void method2(){
        date date1 = date.today();
        date date2 = date1.addDays(31);
        date t = VerifyDate.CheckDates(date1,date2);
        system.assertNotEquals(t, date1);
    }
}