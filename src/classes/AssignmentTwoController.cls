public class AssignmentTwoController {
 String searchText;
   List<Account> accounts;

   public String getSearchText() {
      return searchText;
   }

   public void setSearchText(String s) {
      searchText = s;
   }

   public List<Account> getAccounts() {
      return accounts;
   }

   public void doSearch() {
   if(''!=searchText){
      accounts = new List<Account>();
      accounts = [SELECT Name, BillingState, Phone, Website from Account where Name LIKE :(searchText+'_%')];
                if(accounts.size()==0)
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'No data found'));
      
      }else{
          ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Please enter search string'));
      }   
    }
}