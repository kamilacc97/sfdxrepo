public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer n){
        List<String> arrayList = new List<String>();
        
        for(Integer i=0; i<n; i++){
            arrayList.add('Test '+i);
            System.debug(arrayList[i]);
        }
        
        return arrayList;
    }
}