 **Date:**  *2025-10-18*
 **Tags:** #permanent #linux #flutter 
 **Linked:** [[]], [[]]
## Explanatio**n**
---
```dart
// in ui controller is overrided 

  late Map<String, dynamic> args;
  late String tag;
  late Product product= args['product'];
  @override
  ProductController get controller {
    if (Get.arguments == null) {
      log('arguments are null');
    } else {
      args = Get.arguments as Map<String, dynamic>;
      tag = product.productcode ?? product.id.toString();
      return Get.find(tag: tag);
    }
    return Get.find(tag: tag);
  }
  ----
  //binding
  
class ProductBinding extends Bindings {
  @override
  void dependencies() {
    late Map<String, dynamic> args;
    late String tag;

    args = Get.arguments as Map<String, dynamic>;
    Product product = Product();

    product = args['product'];
    tag = product.productcode ?? product.id.toString();
    Get.lazyPut(() {
      return ProductController();
    }, tag: tag);
  }
}
``` 
- here u just need to declare *arg* , also in *binding* declare and use in **tag** concept
- don't declare and inialize in onInit or in controller, 
- in **overriding section** u also need to do it 
## References
- [[]]