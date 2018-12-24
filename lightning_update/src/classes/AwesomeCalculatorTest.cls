@isTest
public class AwesomeCalculatorTest {
    @isTest static void testCallout(){
       test.setMock(WebServiceMock.class,new CalculatorCalloutMock());
        double x = 1.0;
        double y = 2.0;
        double result = awesomeCalculator.add(x, y);
        system.debug(result);
        double expected = 3.0;
        system.assertEquals(expected,result);
    }
}