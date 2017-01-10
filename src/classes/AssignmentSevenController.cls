public class AssignmentSevenController {
public String city{get;set;}
    public String state{get;set;}
    public String latitude{get;set;}
    public String longitude{get;set;}
    public String HTTPResponse{get;set;}
    public String response{get;set;}
    public void submit(){
    
        HttpRequest req = new HttpRequest();
        req.setEndpoint('http://maps.googleapis.com/maps/api/geocode/json?address='+city+'+'+state+'&sensor=true');
        req.setMethod('GET');
        
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug(res.getBody());
        HTTPResponse=res.getBody();
        
        try{
         HTTPResponse = res.getBody();
         JSONParser parser = JSON.createParser(res.getBody());
         while (parser.nextToken() != null) {
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) &&  (parser.getText() == 'location')) {
            parser.nextToken();parser.nextToken(); parser.nextToken();
            latitude=parser.getText();
            parser.nextToken(); parser.nextToken();
            longitude=parser.getText();
            }
        }

    }
    catch(Exception e) {}

    }
}