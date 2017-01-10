trigger CaseTrigger on Case (before insert, after insert) {

if(trigger.isAfter && trigger.isInsert){

    FeedItem fi = new FeedItem();
    system.debug(trigger.new);
        fi.body =  '#[12345 test space]'+ '\n new line abcde';
         
        fi.parentId = trigger.new[0].Id;
    insert fi;
        }
}