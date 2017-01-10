trigger UserTrigger on User (after update, before update) {

 if (Trigger.isUpdate){
     for(User u : Trigger.New)
      List<UserLogin> userLogin =  [SELECT IsFrozen FROM UserLogin where UserId =: u.id];
     
     
     //u.Is_Frozen__c = userLogin[0].IsFrozen ;
      
     }

}