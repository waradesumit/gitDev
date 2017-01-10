public class BusinessDays {
 
  private List<Boolean> businessDay = new Boolean[7];
  private List<Time> startHours = new Time [7];
  private List<Time> endHours = new Time [7];
  private Date knownSunday = date.newInstance(2013, 1, 6);
  private static String businessHrId = [select id from businesshours where name = 'Test'].id;
  
 
    // Constructor creates businessDay array
    public BusinessDays() {

     BusinessHours bh =
       [Select
         SundayStartTime, MondayStartTime, TuesdayStartTime,
         WednesdayStartTime, ThursdayStartTime, FridayStartTime,
         SaturdayStartTime, SundayEndTime, MondayEndTime,TuesdayEndTime,
         WednesdayEndTime, ThursdayEndTime, FridayEndTime,SaturdayEndTime
       From BusinessHours 
       Where IsDefault=true];

     businessDay[0] = (bh.SundayStartTime != null);
     businessDay[1] = (bh.MondayStartTime != null);
     businessDay[2] = (bh.TuesdayStartTime != null);
     businessDay[3] = (bh.WednesdayStartTime != null);
     businessDay[4] = (bh.ThursdayStartTime != null);
    businessDay[5] = (bh.FridayStartTime != null);
     businessDay[6] = (bh.SaturdayStartTime != null);
  
     startHours[0] = bh.SundayStartTime;
     startHours[1] = bh.MondayStartTime;
     startHours[2] = bh.TuesdayStartTime;
     startHours[3] = bh.WednesdayStartTime;
     startHours[4] = bh.ThursdayStartTime;
     startHours[5] = bh.FridayStartTime;
     startHours[6] = bh.SaturdayStartTime;

     endHours[0] = bh.SundayEndTime;
     endHours[1] = bh.MondayEndTime;
     endHours[2] = bh.TuesdayEndTime;
     endHours[3] = bh.WednesdayEndTime;
     endHours[4] = bh.ThursdayEndTime;
     endHours[5] = bh.FridayEndTime;
     endHours[6] = bh.SaturdayEndTime;
System.debug('***'+bh);
   }

   // Check if today is a business day
   public Boolean isBusinessDay(Date inputDate) {
     String dayOfWeek = datetime.newinstance(inputDate.Year(), inputDate.Month(), inputDate.Day(), 23, 59, 59).format('EEEE');
     
     // index i is index into the businessDay array based on inputDate
    // Integer i = Math.mod(Math.abs(this.knownSunday.daysBetween(inputDate)),7);
    // System.debug('####'+businessDay[i]+i);
     return (dayOfWeek <> 'Saturday' || dayOfWeek <> 'Sunday');
    }
  
   // Get the start time
   public Time getStartTime(Date inputDate) {
     Integer i = Math.mod(Math.abs(this.knownSunday.daysBetween(inputDate)),7);
     return (startHours[i]);
   }

   // Gets next business day, skipping non business days
   public Date nextBusinessDay(Datetime inputDatetime) {
     Integer i = 
       Math.mod(Math.abs(this.knownSunday.daysBetween(inputDatetime.date())),7);
       System.debug('@@@'+Math.mod(Math.abs(this.knownSunday.daysBetween(inputDatetime.date())),7));
     Datetime returnDate = inputDatetime;
     while (!businessDay[Math.mod(i, 7)]) {
       i++;
      returnDate = returnDate.addDays(1);
      System.debug('>>>>>>>>>>>>>>>>>>>>'+returnDate);
     }
     return returnDate.date();
   }
   
   public  date CalcTargetDate(date StartDate, integer Duration, boolean BusinessDays) {
        
        Date TargetDate;
        DateTime startDateTime = DateTime.newInstance(startDate,Time.newInstance(0,0,0,1));
        if(BusinessDays == True) {
            
            long interval = duration;
            interval = interval*24*60*60*1000;
            TargetDate = BusinessHours.add(businessHrId, StartDateTime, interval).date();
        } else {
            TargetDate = StartDate.addDays(Duration);
        }

        return TargetDate;
    }
    
    
public Date nextWorkingDay(Date inputDate) {
       /* String dayOfWeek = datetime.newinstance(inputDate.Year(), inputDate.Month(), inputDate.Day(), 23, 59, 59).format('EEEE');
        Date nextWorkingDay = inputDate;        
        if(dayOfWeek == 'Saturday')
            nextWorkingDay = nextWorkingDay.addDays(2);             
            while(isHoliday(nextWorkingDay)){
                nextWorkingDay = nextWorkingDay.addDays(1);
            }
        return nextWorkingDay;*/
        
        DateTime startDateTime = DateTime.newInstance(inputDate,Time.newInstance(0,0,0,0));
        System.debug('$$$$'+startDateTime);
            long interval = 1;
            interval = 1*24*60*60*1000;
            System.debug('@@@@'+interval);
        return BusinessHours.add(businessHrId, StartDateTime, interval).date();
    }
    
 public Boolean isHoliday(Date inputDate){
        String dayOfWeek = datetime.newinstance(inputDate.Year(), inputDate.Month(), inputDate.Day(), 23, 59, 59).format('EEEE');
        List<Holiday> holidays = [select activitydate from holiday where activitydate = :inputDate];
        return (holidays.size() > 0 || dayOfWeek == 'Saturday' || dayOfWeek == 'Sunday');
    }    
 }