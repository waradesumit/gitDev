public class AssignmentEightController {
    public AssignmentEightController() {
    }
    List<Account> acc = new list<Account>();
    public string temp {get; set;}
    public string str {get; set;}
   
    public void displaySelected(){
        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Account '+temp+' was selected!' ));
    }
        
    Public list<Account> getTempaccount(){
               acc = [SELECT Name,billingState, Phone, Website, Radio__c FROM Account]; 
        return acc; 
    }
}