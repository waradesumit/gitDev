@isTest(SeeAllData=true)

public class TestDataAccess{
    static void myTestMethod(){
        Account a = [SELECT Id, Name FROM Account WHERE Name='Acme' LIMIT 1];
        System.debug('@@@');
        System.assertEquals(a,null);
        
        Account testAccount = a.clone();
        testAccount.Name='ACME Test';
        insert testAccount;
        
        Account testAccount2 = [SELECT Id, Name FROM Account WHERE Name='Acme Test' LIMIT 1];
        System.assert(testAccount2 != null);
    }
    
}