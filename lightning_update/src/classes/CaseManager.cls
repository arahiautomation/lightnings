@RestResource(urlMapping = '/Cases/*')
global with sharing class CaseManager {
@HttpGet
    global static Case getcaseById(){
     RestRequest request = RestContext.request;
      String caseid =request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Case Result = [select Subject,Priority,Status,Origin from Case where id = :caseid];
        return result;
    }
@HttpPost
    global static id createcase(String Subject,String Status,String Priority,String Origin){
       Case thecase = new Case();
        thecase.Subject = 'subject';
        thecase.Priority = 'High';
        thecase.Origin = 'origin';
        thecase.Status = 'status';
       insert thecase;
        return thecase.Id;
    } 
 @HttpDelete
    global static void deletecase(){
       RestRequest request = RestContext.request;
       String caseid =request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Case thiscase = [select id from Case where id = :caseid];
        delete thiscase;
    }
   @Httpput
    global static id upsertcase(String Subject,String Status,String Origin,String Priority,String id){
    Case thiscase = new case();
        Id = id;
        thiscase.Status ='status';
        thiscase.Subject = 'subject';
        thiscase.Priority = 'priority';
        thiscase.Origin = 'Origin';
        Upsert thiscase;
        return thiscase.id;
        
    } 
    @HttpPatch
    global static id updatecasefeilds(){
      RestRequest request = RestContext.request;
         String caseid =request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Case thiscase = [select id from Case where id =:caseid];
        Map<String,Object>params = (Map<String,Object>)JSon.deserializeUntyped(request.requestBody.tostring());
        for( String FeildName :params.Keyset()){
            thiscase.put(Feildname,params.get(feildName));
            system.debug(params.get(feildName));
            }
        update thiscase;
        return thiscase.id;
    }
}