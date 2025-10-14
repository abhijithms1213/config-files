 **Date:**  *2025-10-07*
 **Tags:** #permanent #flutter 
 **Linked:** [[dart-groupBy]], [[]]
## Question :
- ######  *change to List from Map*  
## Explanatio**n**
---
```dart
[
  {age: 20, names: [Alice, Charlie]},
  {age: 25, names: [Bob]}
]
-- this is the needed output
```
- so we will do another process in this grouped list
```dart
final result = grouped.entries.map((entry) {
  return {
    'age': entry.key,
    'names': entry.value.map((p) => p.name).toList(),
  };
}).toList();

print(result);

## Example / Application
- 
- 
- 

## References
- [[]]
```
- in first line , *grouped.entries , entries is for get output as Key,Value check the return of that process* , *then map. is used for Iteration,(not for mapping)* so **hover there we can see a function is expecting , so that's why(e)=> it returns the age: key, names: here also map used because Iteration needed for values right side , and it returns the value we needed to show** 
- here  p.name is the second field and *.toList* will out as llist
## Reference
---
[[dart-override default print behaviour of a class]]