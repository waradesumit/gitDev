public class AssignmentFiveController {
public AssignmentFiveController (){
ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Select an account by clicking its name'));

}
List<Account> accounts;
public string acc;
 public List<Account> getAccounts() {
          accounts = new List<Account>();
      accounts = [SELECT Name, BillingState, Phone, Website from Account order by name];
      return accounts;
   }
 public void setAcc(String str) {
        acc= str;
    }
            
    public String getAcc() {
        return acc;
    }
    
    public PageReference methodOne() {
       
              
    ApexPages.getMessages().clear();
           ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'You selected '+acc));

                 System.debug('<<<<<<<<<<<acc>>>>>>>>>>>>>'+acc);
        // now process the variable by doing something...
       return null;    }
    }