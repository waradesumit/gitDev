trigger ContactsCount on Contact(after delete, after insert, after undelete, 
after update) {

List<Schema.sObjectField> testDescribeCall= schema.sObjectType.Stock__c.fields.getMap().values();
System.debug('***Fields'+testDescribeCall);


    Contact[] cons;
    
    if (Trigger.isDelete) 
        cons = Trigger.old;
    else
       cons = Trigger.new;
 
       
    String acctIds = cons[0].AccountId;
          
    System.debug('List *******'+acctIds);
    Map<ID, Contact> contactsForAccounts = new Map<ID, Contact>([select Id
                                                            ,AccountId
                                                            from Contact
                                                            where AccountId =:acctIds]);
System.debug('Map *******'+contactsForAccounts.size());
    Map<ID, Account> acctsToUpdate = new Map<ID, Account>([select Id
                                                                 ,Number_of_Contacts__c
                                                                  from Account
                                                                  where Id =: acctIds]);
    
    
                  System.debug('Account*******'+acctsToUpdate.size());   
    
    for (Account acct : acctsToUpdate.values()) {
        Set<ID> conIds = new Set<ID>();
        for (Contact con : contactsForAccounts.values()) {
            if (con.AccountId == acct.Id)
                conIds.add(con.Id);
        }
        if (acct.Number_of_Contacts__c != conIds.size())
            acct.Number_of_Contacts__c = conIds.size();
    }

    List<Account> lstAcc = acctsToUpdate.values();
    update lstAcc;
    
    if(Trigger.isUpdate){
        Set<ID> contactID = new Set<ID>();
        for(Contact con : Trigger.new)
            contactID.add(con.Id);
            
            // Update logic to follow..............
    }
    
}