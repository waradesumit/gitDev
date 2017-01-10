public class HerokuRegistrationController {
public HerokuRegistrationController() {}
       public String firstName{get; set;}
       public String lastName{get; set;} 
       public String email{get; set;}
       public String password {get; set;}
       public boolean isLoginEnabled {get; set;}
       
       public PageReference registerUser() { 
        PageReference pageRef = null;
         Contact contact = new Contact(); 
         contact.FirstName= firstName;  
         contact.LastName= lastName; 
         contact.email = email;
         contact.Password__c = password;
         
         Contact[] contacts= [select email from Contact where Email = :email];
          if(contacts.size() > 0){
              ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Sorry !!!... This email is already registered.'));
              }else{
                insert contact;
                isLoginEnabled = true;
                //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Registration Successful !!!'));
              }
         //pageRef = new PageReference ('/apex/HerokuLogin');
         return pageRef ;
       } 
            
        public PageReference login() {          
            PageReference pageRef = new PageReference ('/apex/HerokuLogin');
            return pageRef; 
         } 
}