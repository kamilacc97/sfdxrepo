@isTest
public class TestVerifyDate {
	@isTest static void testDateWithin30Days() {
        Date date1 = date.today();
        Date date2 = date1.addDays(29);
        Date t = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(t, date2);
    }
    
    @isTest static void testDateWithin30Days2() {
        Date date1 = date.today();
        Date date2 = date1.addDays(31);
        Date t = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(t, date1);
    }

}