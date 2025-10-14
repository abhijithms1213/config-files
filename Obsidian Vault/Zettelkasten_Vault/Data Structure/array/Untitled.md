# {{title}} in Java 🧠
> Tags: #datastructure #java #{{type}}  
> Date: {{date}}

---

## 📦 Java Implementation

### ▶️ Example Code
```java
public static long zeroFilledSubarray(int[] array) {
    long count = 0; 
    long n = 0;    

    for (int i = 0; i < array.length; i++) {
        if (array[i] == 0) {
            n++;
        } else {
            count += (n * (n + 1)) / 2;
            n = 0;
        }
    }

    // Handle if array ends with zeros
    if (array.length > 0 || array[array.length - 1] == 0) {
        count += (n * (n + 1)) / 2;
    }

    return count;
}

```

## 📚 Overview
> Brief explanation of the data structure.
> ok here to return zero's  and return it so here `+1 school` level maths n\*n+1/2 
> complexity : O(N) time

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
