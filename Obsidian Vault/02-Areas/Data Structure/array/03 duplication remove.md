**[26. Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)**
```java
 public static int duplicationCheck(int[] array) {
        int count = 0;
        for (int i = 0; i < array.length; i++) {

            if (i < array.length - 1 && array[i] == array[i + 1]) {
                continue;
            } else {
                array[count] = array[i];
                count++;
            }

        }
        return count;
    }

```
*TC: O(N)*
*SC: O(1)*
