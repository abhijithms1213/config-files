### approach 1.
#### quick sort approach 
```java
import java.util.HashMap;

public class Majority {
public static int partition(int[] array, int beg, int end) {
int pivot = array[end];
int temp = beg - 1;// here we swaping the elemnt , so when an element present then increase and swap with array[i] , check for loop
for (int i = beg; i < end; i++) {
if (array[i] < pivot) {
temp++;
array[temp] = array[temp] + array[i];
array[i] = array[temp] - array[i];
array[temp] = array[temp] - array[i];
}

}
//here we increase for swap the pivot , to the current temp 2 4 3 8 6 9 p(5) so swap 5 with 8 and send next partion as return
temp++;
array[temp] = array[temp] + array[end];
array[end] = array[temp] - array[end];
array[temp] = array[temp] - array[end];
return temp++;
}

public static void quickSort(int[] array, int beg, int end) {
if (beg < end) {//don't forget to add this condition unless it will run infinity
int partition = partition(array, beg, end);
quickSort(array, beg, partition - 1);
quickSort(array, partition + 1, end);
}
}

public static void main(String[] args) {

int[] array = { 2, 1, 1, 1, 2, 2, 1, 2 };

 //sorting method

 quickSort(array, 0, array.length-1);

for (int i = 0; i < array.length; i++) {

 System.out.println(array[i]);

 }

}
}
```
**time complexity: O(nlogn)**
**space complexity: O(1)**
- here we partition the array for quicksort
	- the middle .n/2 iwill be the *majority* 
### approach 2.
### hashtable based
```java


public static int majorityHashTable(int[] array) {
HashMap<Integer, Integer> majoritHashMap = new HashMap<>();
//above is the declaration of hashmap {
// 1=2,2=2 //number and count 
//}

int n = array.length;

for (int i : array) {//here direct taking array[i] in 'i'

//maj...getOrDefault is doing getting the count of 'i'(number), else gets 0 then add **one** because major..put finds value and count value is i, count get from second portion that count or zero (default),+1 means we got another element so count increases
majoritHashMap.put(i, majoritHashMap.getOrDefault(i, 0) + 1);

if (majoritHashMap.get(i) > n / 2) {

System.out.println("HashMap during exit: " + majoritHashMap);

return i;
}
}

System.out.println("Final HashMap: " + majoritHashMap); // <== This prints the full map

return -1;

}
public static void main(String[] args) {

int[] array = { 2, 1, 1, 1, 2, 2, 1, 2 };
// hash map method
 int value = majorityHashTable(array);
 System.out.println(value);


}

}
```
**time complexity: O(n)**
**space complexity: O(n): at worst case**
### third optimal solution
#### boye moore
```java
    public static int majorityOptimal(int[] array) {
        int majority = array[0], votes = 1;
        for (int i = 1; i < array.length; i++) {
            if (votes == 0) {
                majority = array[i];
                votes = 1;
            } else if (majority == array[i]) {
                votes++;
            } else {
                votes--;
            }
        }
        return majority;
    }
```
- it is a voting technique
	- if count 0 then change the voting count to that element 
	