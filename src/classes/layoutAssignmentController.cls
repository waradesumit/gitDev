public class layoutAssignmentController {
public string HiringOption{get;set;}
public String ratings=null;

public layoutAssignmentController(){}
public List<SelectOption> getYesNo() { 
    List<SelectOption> options = new List<SelectOption>();
     options.add(new SelectOption('true', 'Yes'));
     options.add(new SelectOption('false', 'No'));
    return options;
      }
      
      public List<SelectOption> getRatingOptions() { 
        List<SelectOption> options = new List<SelectOption>();
         options.add(new SelectOption('1','1'));
         options.add(new SelectOption('2','2'));         
         options.add(new SelectOption('3','3'));
         options.add(new SelectOption('4','4'));
         options.add(new SelectOption('5','5'));
         return options;
          }
          public String getRatings(){
            return ratings;
           }
            public void setRatings(String ratings){
            this.ratings=ratings;
          }
          
            public List<SelectOption> getItems() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('None','None'));
            options.add(new SelectOption('A Little','A Little'));
            options.add(new SelectOption('Moderate','Moderate'));
            options.add(new SelectOption('High','High'));
            return options;
        }
public string[] experience{get;set;} 

      public Contact person {set;}

    public Contact getPerson()
    {
       return [select id, reportstoid from Contact limit 1];
    }


}