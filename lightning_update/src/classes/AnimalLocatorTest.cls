@isTest
public class AnimalLocatorTest {
    @isTest static void AnimalLocatorMock1(){
        test.setMock(HttpCalloutMock.class,new AnimalLocatorMock());
        String result = AnimalLocator.getAnimalNameBYId(1);
        String expectedresult = 'chicken';
        system.assertequals(result,expectedresult);
    }
}