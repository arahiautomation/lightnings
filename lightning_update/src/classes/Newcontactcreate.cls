public class Newcontactcreate {
    public static Map<String,String>createContactrecord(Contact newcontact){
        Map<String,String>resultmap=new Map<String,String>();
        try{
            insert newcontact;
            resultmap.put('status','success');
            resultmap.put('message','contact inserted');
        }
        catch(exception e){
            resultmap.put('status','error');
            resultmap.put('message',e.getMessage());
        }
        return resultmap;
    }
}