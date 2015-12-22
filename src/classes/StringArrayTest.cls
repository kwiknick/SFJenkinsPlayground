public class StringArrayTest {
    
    List<String> test = new List<String>();
    
    public void generateStringArray(){
        
        Integer counter = 0;
        while (counter < 10){
            test.add('test' + counter);
            counter++;
            System.debug(test);
        }
        
    }

}