// using a library
import java.util.LinkedList;

public class MyClass {
    public static void main(String args[]) {
        LinkedList travelBucketList = new LinkedList();
        
        // Add Items
        travelBucketList.add("Santorini, Greece");
        // adding at the head
        travelBucketList.addFirst("Barcelona, Spain");
        // adding at the tail
        travelBucketList.addLast("Tokyo, Japan");
        // adding at a specific index >> [2]
        travelBucketList.add(2, "Galapagos Islands, Ecuador");
        System.out.println(travelBucketList);
        
        // Access
        System.out.println(travelBucketList.get(2)); // bad
        System.out.println(travelBucketList.getFirst()); // quicker and efficient as we search from the head
        
        System.out.println(travelBucketList.contains("Barcelona, Spain")); // true/false
        
        // Remove Items
        travelBucketList.removeFirst();
        travelBucketList.removeLast();
        System.out.println(travelBucketList);
        
        // remove by object and index
        travelBucketList.remove("Santorini, Greece");
        travelBucketList.remove(0);
        System.out.println(travelBucketList);
    }
}
