public class AssignmentThreeController {
 public List<cAccount> accountList {get; set;}  
     public List<Account> selectedAccounts; 
     public List<cAccount> getAccounts() {  
              if(accountList == null) {  
             accountList = new List<cAccount>();  
             for(Account a: [select Name,  Phone from Account limit 10]) {  
                 accountList .add(new cAccount(a));  
             }  
         }  
         return accountList;  
     }      
     public List<Account> getselectedAccounts(){
               return selectedAccounts;
      }         
     public PageReference processSelected() { 
     ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'Please select the record')); 
    
         selectedAccounts= new List<Account>(); 
         selectedAccounts.clear();
         for(cAccount ac: getAccounts()) {  
             if(ac.selected == true) {  
                 selectedAccounts.add(ac.acnt);
             }  
         }
                             
         return null;  
     }  

     public class cAccount {  
         public Account acnt {get; set;}  
         public Boolean selected {get; set;}  

        public cAccount (Account a) {  
            acnt = a;  
            selected = false;  
         }  
     }  
}