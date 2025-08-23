### 121's problem on leet code
```java
	public static int maxProfit(int[] prices) {
      int buyPrice = Integer.MAX_VALUE;
        int maxProfit= 0;
        int index=0;
        for (int price : prices) {
            if (price<buyPrice) {
                buyPrice= price;

            }
          /*   if (price==1&&index==prices.length-1) {
                System.out.println("arrived");
                return 0;
            } */
            int profit = price-buyPrice;
            if (profit>maxProfit) {
                maxProfit=profit;
            }
           // index++;
        }
        return maxProfit
```
- complexity: O(n)