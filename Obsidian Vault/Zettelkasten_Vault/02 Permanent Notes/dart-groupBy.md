 **Date:**  *2025-10-07*
 **Tags:** #permanent #flutter 
 **Linked:** [[]], [[]]
## Question :
- ######  *using GroupBy to Group a list based on  a particular value*  
## Explanatio**n**
---
```dart
import 'package:collection/collection.dart';

class Person {
  final String name;
  final int age;
  Person(this.name, this.age);
}

void main() {
  final people = [
    Person("Alice", 20),
    Person("Bob", 25),
    Person("Charlie", 20),
  ];

  final grouped = groupBy(people, (p) => p.age);

  print(grouped);
}
```
- here *grouped* will get a output
```json
{	
  20: [Instance of 'Person', Instance of 'Person'],
  25: [Instance of 'Person']
} 
or --- 
{// note this braces
  20: [Person("Alice", 20), Person("Charlie", 20)],
  25: [Person("Bob", 25)]
}

```
here **groupedBy** will group by any field ,
	here people is the list or  *input* 
- next *p*  is   **single Person from that list**  and here *return* with **which field's grouping , here age** , the above is the output
### but not formatted in List it's in Map
---
so we use [[dart-map to list convert based on groupBy]]
## Example / Application
- 
- 
- 

## References
- [[]]
