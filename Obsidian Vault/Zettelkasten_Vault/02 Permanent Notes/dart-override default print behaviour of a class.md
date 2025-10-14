 **Date:**  *2025-10-07*
 **Tags:** #permanent #flutter 
 **Linked:** [[]], [[]]
## Question :
- ######  *How to replace a model's default output behaviour?*  
## Explanatio**n**
---
```dart
class DepartmentGroup {
final String department;
final List<String> employees;
DepartmentGroup(this.department, this.employees);

@override
String toString() {
	return '{\n dept: $department employees : $employees}';
}}
```
here returns as *this formate unless it says Instance(object) of class created* that is default happening
## Example / Application
- 
- 
- 

## References
- [[dart-search through list]]
