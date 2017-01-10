trigger TestingAccount on Account (after insert,after update,before insert,before update) {
/*
system.debug('***NEW'+ trigger.new);
//system.debug('***OLD'+ trigger.old);

for(Account acc :trigger.new){
    system.debug('***'+acc.Name);
    system.debug('***'+acc.rating);
    
    if(trigger.isUpdate && trigger.isBefore){
       // acc.name = 'WB';
    }
    
    if(trigger.isUpdate && trigger.isAfter){
        if(acc.name == 'WB'){
        System.debug('>>>>>>>>>>>>>>>>>' + acc.Name);
       // acc.name.addError('Error from Trigger');
        }
        
    }
    
       
}
Contact[] cons = [SELECT LastName FROM Contact
WHERE AccountId IN :Trigger.new];
system.debug('***NEW'+ cons );
*/
}