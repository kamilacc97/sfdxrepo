public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String parm){
        List<List<SObject>> searchList = [FIND :parm IN ALL FIELDS 
                                          RETURNING Lead(Name,FirstName,LastName), Contact(FirstName,LastName)];
        
        return searchList;
    }
}