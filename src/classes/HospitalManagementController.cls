public class HospitalManagementController {
String contactId; 
List <Payment__C> pmt = new List<Payment__C>();
public String paymentMode{get;set;}
public Date paymentDate {get;set;}
public Decimal paymentAmount {get;set;}

    public HospitalManagementController(ApexPages.StandardController controller) {
    contactId  = ApexPages.currentPage().getParameters().get('id');
    if(contactId!=null)
        pmt = [select Payment_Amount__c,Payment_Date__c,Payment_Mode__c, Patient__c from Payment__C where Patient__c =: contactId]; 
        paymentMode = pmt[0].Payment_Mode__c;
        paymentDate = pmt[0].Payment_Date__c;
        paymentAmount  = pmt[0].Payment_Amount__c;
              }  


}