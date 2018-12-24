@isTest

Global class CalculatorCalloutMock implements WebServiceMock {
    global void doInvoke(
        Object stub,
        Object request,
         Map<String,Object>response,
            String requestName,
            String responseName,
            String endPoint,
            String soapAction,
            String responseNS,
        String responseType){
            
            calculatorServices.doAddResponse response_x = New calculatorServices.doAddResponse();
            response_x.return_x =3.0;
    }
}