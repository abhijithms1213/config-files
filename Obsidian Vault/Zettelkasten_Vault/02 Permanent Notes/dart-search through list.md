 **Date:**  *2025-10-07*
 **Tags:** #permanent #flutter 
 **Linked:** [[]], [[]]
## Question :
- ######  *How to search through list in flutter?*  
## Explanatio**n**
---
```dart
void main() {
  // A sample list
  List<String> fruits = [
    "Apple",
    "Banana",
    "Orange",
    "Mango",
    "Grapes",
    "Pineapple",
  ];

  // Let's say we want to search for "ap"
  String query = "ap";

  // Use `where` to filter list
  List<String> results = fruits
      .where((fruit) => fruit.toLowerCase().contains(query.toLowerCase()))
      .toList();

  print("Search results for '$query': $results");
}
```
```ad-summary
- here *where itereates whole list* 
- only returns the contains only with query
```
```dart
// another example

class Fruit {
  final String name;
  final String color;

  Fruit({required this.name, required this.color});
}

void main() {
  final List<Fruit> fruits = [
    Fruit(name: "Apple", color: "Red"),
    Fruit(name: "Banana", color: "Yellow"),
    Fruit(name: "Orange", color: "Orange"),
    Fruit(name: "Mango", color: "Yellow"),
    Fruit(name: "Grapes", color: "Green"),
    Fruit(name: "Blueberry", color: "Blue"),
    Fruit(name: "Pineapple", color: "Brown"),
  ];
final String query = "new";
  // init
  List<Fruit> filteredfruit = [];
      final results = fruits.where((fruit) {
      final nameMatch = fruit.name.toLowerCase().contains(query.toLowerCase());
      final colorMatch = fruit.color.toLowerCase().contains(query.toLowerCase());
      return nameMatch || colorMatch;
    }).toList();

  filteredfruit = results;
  print(filteredfruit);
```
## Example / Application
- 
- 
- 

## References
- [[]]
