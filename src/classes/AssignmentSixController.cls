public class AssignmentSixController {
Public String City{get; set;}
    Public String State{get; set;}
    Public String HTTPResponse{get; set;}
    Public String Latitude{get; set;}
    Public String Longitude{get; set;}
    
    public void submit() {
         HttpRequest req = new HttpRequest();
         req.setEndpoint('http://maps.googleapis.com/maps/api/geocode/xml?address=' +City + ','+State +'& sensor=false');
         req.setMethod('GET');
         
         Http http = new Http();
         HTTPResponse res = http.send(req);
         HttpResponse = res.getBody();
         Dom.Document doc = res.getBodyDocument();
         Dom.XMLNode geocodeResponse = doc.getRootElement();
         longitude = geocodeResponse.getChildElement('result', null).getChildElement('geometry', null).getChildElement('location', null).getChildElement('lng', null).getText();
         latitude = geocodeResponse.getChildElement('result', null).getChildElement('geometry', null).getChildElement('location', null).getChildElement('lat', null).getText();
    }

   }