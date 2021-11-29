@isTest
public class TestRestrictContactByName {
    @isTest static void createdBadContact(){
        Contact cont = new Contact(FirstName='John',LastName='INVALIDNAME');
        
        
        Database.SaveResult res = Database.insert(cont,false);
        
        System.assert(!res.isSuccess());
    }
    @isTest static void createdCorrectContact(){
        Contact cont = new Contact(FirstName='Jakub',LastName='Jóźwiak');
        Database.SaveResult res = Database.insert(cont,true);
        
        
        System.assert(res.isSuccess());
    }
}