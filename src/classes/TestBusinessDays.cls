@isTest(SeeAllData=true)
public with sharing class TestBusinessDays {
private static BusinessDays businessDay = new BusinessDays();
 static testMethod void testBusinessDay(){
 	Date inputDate = Date.ValueOf('2013-12-16');
 	System.assertEquals(Date.ValueOf('2013-12-16'), businessDay.nextWorkingDay(inputDate));
 }
 
 static testMethod void testSaturday(){
 	Date inputDate = Date.ValueOf('2013-12-14');
 	System.assertEquals(Date.ValueOf('2013-12-16'), businessDay.nextWorkingDay(inputDate));
 }
 
 static testMethod void testHoliday(){
 	Date inputDate = Date.ValueOf('2013-12-25');
 	System.assertEquals(Date.ValueOf('2013-12-26'), businessDay.nextWorkingDay(inputDate));
 }
 
 static testMethod void testConcatenatingHoliday(){
 	Date inputDate = Date.ValueOf('2013-12-17');
 	System.assertEquals(Date.ValueOf('2013-12-19'), businessDay.nextWorkingDay(inputDate));
 }
 
  static testMethod void testSaturdayFollowedByHoliday(){
 	Date inputDate = Date.ValueOf('2013-12-28');
 	System.assertEquals(Date.ValueOf('2013-12-31'), businessDay.nextWorkingDay(inputDate));
 }
 
 static testMethod void testHolidayFollowedBySaturday(){
 	Date inputDate = Date.ValueOf('2013-12-20');
 	System.assertEquals(Date.ValueOf('2013-12-23'), businessDay.nextWorkingDay(inputDate));
 }
}