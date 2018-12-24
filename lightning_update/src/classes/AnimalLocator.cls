public class AnimalLocator {
    public static string getAnimalNameBYId(Integer id){
       
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        String strres ='';
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        request.setMethod('GET');
        request.setHeader('Content-Type','application/json;cahrset=UFT-8');
        HttpResponse response = Http.send(request);
        if(response.getStatusCode()==200){
            Map<String,Object>results = (Map<String,Object>)JSON.deserializeUntyped(response.getBody());
          Map<String,object>animal = (Map<String,Object>)results.get('animal');
            system.debug(animal);
            strres = String.valueOf(animal.get('name'));
            system.debug(strres);
            }
           return  strres;
       
        
    }
   
}