public class dataListController {
List<Account> accounts;
public List<Account> getAccounts() {
if(accounts == null) accounts = [select type from account limit 10];
return accounts;
}

}