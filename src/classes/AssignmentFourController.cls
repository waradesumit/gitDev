public class AssignmentFourController {
public AssignmentFourController(){
    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'The page was created using ONLY one query'));
}
     public List<Account> getList(){
            return [Select Name, Id, (Select FirstName,LastName,Phone,Email From Contacts) From Account order by name];
                 }

}