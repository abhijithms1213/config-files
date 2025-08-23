x- in *getx* get.put must be done before *get.find* 
- so in main.dart use **getMaterial** instead of *material* and use binding and make a class then `add all get.put` in that binding
```dart
class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialBinding: Binding(),
      home: ScreenHome(),
    );
  }
}

```
if u are using **getview instead of stl then need to use the** `binding and get.put in it` 
- after that only use *get.find* so itwill find it