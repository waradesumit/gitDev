public class AssignmentNineController {
    List<Account> accounts;
    public List<Account> getAccounts() {
          accounts = new List<Account>();
          accounts = [Select Name, Id, (Select FirstName,LastName,title,Email,Phone From Contacts) From Account order by name desc LIMIT 5];
          return accounts;
       }
}