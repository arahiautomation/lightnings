@isTest
public class AnimalsCalloutsTest  {
    
    @isTest static void testGetCallout(){
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetAnimalResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset= UFT-8');
       Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse result = AnimalCallouts.makeGetCallout();
        system.assertNotEquals(null, result,'The callout returned null response');
        system.assertEquals(200, result.getStatusCode(), 'The StatusCode is not 200');
        system.assertEquals('application/json;charset= UFT-8', result.getHeader('Content-Type'),'The content type value is not expected');
        Map<String,Object>results = (Map<String,Object>)JSON.deserializeUntyped(result.getBody());
        List<Object>animals= (List<Object>)results.get('animals');
        for(Object animal :animals){
            system.assertEquals(3,animals.size(),'The object contains 3 animals');
        } 
    }    
            @isTest static void testPostCallout(){
     
                 Test.setMock(HttpCalloutMock.class, new AnimalsHttpCalloutMock());
                HttpResponse response = AnimalCallouts.makePostCallout();
                String ContentType = response.getHeader('Content-Type');
                system.assert(contentType =='application/json');
                String actualvalue = response.getBody();
                String expectedvalue = '{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}'; 
                system.assertEquals(expectedvalue, actualvalue);
                system.assertEquals(200,response.getStatusCode());
            }
            
            
        }