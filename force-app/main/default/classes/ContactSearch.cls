public class ContactSearch {
    public static List<Contact> searchForContacts(String parm1, String parm2){
        List<Contact> contacts = [
            SELECT Id, Name
            FROM Contact
            WHERE LastName=:parm1 and MailingPostalCode = :parm2
        ];
        return contacts;
    }
}