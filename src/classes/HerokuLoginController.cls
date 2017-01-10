public class HerokuLoginController {
       public String username {get; set;}
       public String password {get; set;} 
       public String pwd ;
       public boolean isPasswordChange {get; set;} 
      
    // public HerokuLoginController () {}  
     public PageReference login() {  
     PageReference pageRef;
     
      Contact[] contacts= [select password__c from Contact where Email = :username];
      if(contacts.size() > 0){
           pwd = contacts[0].password__c;      
               if (pwd==password) {
                    pageRef = Page.HerokuRegistration;
                 }else{
                     ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Either username or password is invalid'));
                 }
            }else{
                 ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Either username or password is invalid'));
                 pageRef =null; 
             } 
            return pageRef;            
         }   
         
         public PageReference register() {          
            PageReference pageRef = new PageReference ('/apex/HerokuRegistration');
            return pageRef; 
        } 
        
        public void changePassword(){
            Contact[] contacts= [select count__c from Contact where Email = :username];
            contacts[0].count__c= 'Y';
            update contacts;
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Password has been sent to '+username ));
        }
        public void forgotPassword(){
            isPasswordChange = true;
         }
         
         
          /* Configuration */ 
// The API endpoint for the reCAPTCHA service  
    private static String baseUrl = 'https://www.google.com/recaptcha/api/verify';   
  
     // The keys you get by signing up for reCAPTCHA for your domain  

     private static String privateKey = '6LehauMSAAAAAKFV8IBAUtEMRwUtDBqjOMGB_xDQ';     
     public String publicKey {   
         get { return '6LehauMSAAAAAHMtIu8Cd8Ph7ow67_g26SYk6K9I'; }  
     }  
         /* Implementation */  
       
     // Simple form fields for the example form  

            
     // Create properties for the non-VF component input fields generated  
     // by the reCAPTCHA JavaScript.  

     public String challenge {   
         get {  
             return ApexPages.currentPage().getParameters().get('recaptcha_challenge_field');  
         }  
     }  
     public String response  {   
         get {  
             return ApexPages.currentPage().getParameters().get('recaptcha_response_field');  
         }  
     }  
        
     // Whether the submission has passed reCAPTCHA validation or not  
     public Boolean verified { get; private set; }       
     public HerokuLoginController() {  
         this.verified = false;  
     }  
        
     public PageReference verify() {  
         System.debug('reCAPTCHA verification attempt');  
         // On first page load, form is empty, so no request to make yet  
         if ( challenge == null || response == null ) {   
             System.debug('reCAPTCHA verification attempt with empty form');  
             return null;   
         }  
                        
         HttpResponse r = makeRequest(baseUrl,  
             'privatekey=' + privateKey +   
             '&remoteip='  + remoteHost +   
             '&challenge=' + challenge +  
             '&response='  + response  
         );  
           
         if ( r!= null ) {  
             this.verified = (r.getBody().startsWithIgnoreCase('true'));  
         }  
           
         if(this.verified) {  
             // If they pass verification, you might do something interesting here  
             // Or simply return a PageReference to the "next" page  
             return login();  
         }  
         else {  
            // stay on page to re-try reCAPTCHA  
             return null;   
        }  
    }  
   
    public PageReference reset() {  
         return null;   
    }     
   
     /* Private helper methods */ 
        
     private static HttpResponse makeRequest(string url, string body)  {  
         HttpResponse response = null;  
         HttpRequest req = new HttpRequest();     
         req.setEndpoint(url);  
        req.setMethod('POST');  
        req.setBody (body);  
         try {  

             Http http = new Http();  
             response = http.send(req);  
             System.debug('reCAPTCHA response: ' + response);  
             System.debug('reCAPTCHA body: ' + response.getBody());  
         } catch(System.Exception e) {  
             System.debug('ERROR: ' + e);  
         }  
         return response;  
     }     
            
     private String remoteHost {   
         get {   
             String ret = '127.0.0.1';  
             // also could use x-original-remote-host   
             Map<String, String> hdrs = ApexPages.currentPage().getHeaders();  
             if (hdrs.get('x-original-remote-addr')!= null)  
                 ret =  hdrs.get('x-original-remote-addr');  
             else if (hdrs.get('X-Salesforce-SIP')!= null)  
                 ret =  hdrs.get('X-Salesforce-SIP');  
             return ret;  
         }  
     }  
}