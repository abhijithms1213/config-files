# {{title}} in Java 🧠
> Tags: #datastructure #java #{{type}}  
> Date: {{date}}

---

## 📦 Java Implementation

### ▶️ Example Code
```java
    public static int stock_second(int[] prices) {
        int maxProfit = 0;
        for (int i = 1; i < prices.length-1; i++) {
            if (prices[i] > prices[i - 1]) {
                maxProfit = maxProfit + prices[i] - prices[i - 1];
            }
        }
    return maxProfit;
    
```

## 📚 Overview
> **here we taking the maximum profit (sum of profits gained) is returing .from the first version that time we  performed ,main aim is lower buy higher sell, `here suming full profit
121 = One transaction (buy-sell once, find the biggest profit window).
122 = Multiple transactions (buy-sell as many times as possible on each price uptick 
### 🔹 Time & Space Complexity
time : `O(N)`
space : `O(1)`