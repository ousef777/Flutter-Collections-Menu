import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'models/food.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final List<Food> menu = [
    Food('Pasta','assets/images/pasta.jpg'),
    Food('Burger','assets/images/burger.jpg'),
    Food('Suchi','assets/images/suchi.jpg'),
    Food('Pizza','assets/images/pizza.jpg'),
    Food('Biryani','assets/images/biryani.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Menu"), centerTitle: true, backgroundColor: Colors.red,),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // number of items in each row
                          mainAxisSpacing: 8.0, // spacing between rows
                          crossAxisSpacing: 8.0, // spacing between columns
                          childAspectRatio: 2.0
                        ),
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(menu[index].name, style: const TextStyle(fontSize: 28)),
                  Image.asset(menu[index].imgPath, width: 200, height: 150, fit: BoxFit.fill,)
                ],
              ),
            );
          }
        )
      ),
    );
  }
}
