@isTest
public class ParkLocatorTest {
    @isTest static void testcallout(){
        test.setMock(WebServiceMock.class,new ParkServiceMock());
        String country ='Germany';
        String []response = ParkLocator.country(country);
        system.assertEquals(new List<String>{'Hamburg Wadden Sea National Park', 'Hainich National Park', 'Bavarian Forest National Park'}, response);
    }
}