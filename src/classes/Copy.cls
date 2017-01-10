public class Copy {
public String stringValue{get;set;}
public String stringValue1{get;set;}
    
    public Copy(ApexPages.StandardController controller) {
    stringValue=this.stringValue;
    stringValue1=this.stringValue1;
       }
    public void copyContent(){
        stringValue1=stringValue;
       }
}