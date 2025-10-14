 **Date:**  *2025-10-07*
 **Tags:** #permanent #flutter 
 **Linked:** [[]], [[]]
## Question :
- ######  *Why Listener use an How?*  
## Explanatio**n**
---
- Listener will listen **to any controller if any changes occured we can trigger something to perform**
- [[dart-stream as Listener]] is also used for *Listen to Hive DB in company project*
- below is the example
```dart
anyController.addListener((){
	print("worked")
})

_animationController.addListener(() {
  print(_animationController.value); // runs every frame
});

ValueNotifier<int> counter = ValueNotifier(0);
counter.addListener(() {
  print("Counter changed: ${counter.value}");
});
counter.value++; // it will print the statement also

_scrollController.addListener(() {
  print(_scrollController.offset);
});
```

- ### **Where else can you use `addListener`?**
1. **TextEditingController**
    - Listen to user input in `TextField` or `TextFormField`.
    - Example: Enable/disable a button based on text length.
2. **AnimationController**
    - Track progress of axnimations.## Example / Application
- 
- 
- 

## References
- [[]]
