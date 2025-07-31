## problem leetcode: 283
### optimal solution
```java
class Solution {
    public static int[] moveZeroes(int[] nums) {
                int currentIndex=0;
        for (int i = 0; i < nums.length; i++) {
            if (nums[i]!=0) {
                nums[currentIndex]=nums[i];
                currentIndex++;
            }
        }
        while (currentIndex<nums.length) {
            nums[currentIndex]=0;
            currentIndex++;
        }
        return nums;
    }
       public static void main(String[] args) {
        int [] nums = {10,3,4,0,8};
       int[] replay = moveZeroes(nums);
       for (int i = 0; i < replay.length; i++) {
        
           System.out.println(replay[i]);
       }
    }
}
```
- space complexity O(1)
- time complexity O(n)

