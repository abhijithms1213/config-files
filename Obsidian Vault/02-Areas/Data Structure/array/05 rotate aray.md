# Java 🧠
> Tags: #datastructure #java #{{type}}  
> Date: {{date}}

---

## 📚 Overview
> Brief explanation of the data structure.

- 📂 Type: {{type}} (e.g., Linear / Non-linear)
- 📌 Applications:
  - 
  - 
- 🔄 Related Structures:
  - [[AnotherStructure]]

---

## 🧩 Key Concepts

### 🔹 What is {{title}}?
Explain what it is in simple terms.

### 🔹 Key Properties
- 
- 
- 

### 🔹 Time & Space Complexity
| Operation        | Average | Worst |
| ---------------- | ------- | ----- |
| Insert           |         |       |
| Delete           |         |       |
| Search/Access    |         |       |
| Space Complexity |         |       |

---

## 📦 Java Implementation

### ▶️ Example Code
```java
    public static void reverse(int[] nums, int beg, int end) {
        while (beg <= end) {
            int temp = nums[beg];
            nums[beg] = nums[end];
            nums[end] = temp;
            beg++;
            end--;
        }
    }

    public static void rotate(int[] nums, int kc) {
        int k = kc%nums.length;
        reverse(nums, 0, nums.length - 1);
        reverse(nums, 0, k - 1);
        reverse(nums, k, nums.length - 1);
    }
	psvm{
        int[] array = { 1, 2, 3, 4, 5, 6, 7 };
        rotate(array, 3);	
	}

```
- ok here reverse the array for `reversing` we can see that `reverse` function
- in first reverse call reverse the array and we need to reverse also the two parts , think logically
