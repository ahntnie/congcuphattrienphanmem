import 'package:flutter/material.dart';
import 'package:mobile_app/components/category.dart';
import 'package:mobile_app/components/home.dart';
import 'package:mobile_app/components/personal.dart';

class ScreenApp extends StatefulWidget {
  
  const ScreenApp({super.key});
  @override
  State<ScreenApp> createState() => _ScreenApp();
}
class _ScreenApp extends State<ScreenApp>{
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: const Text("FoodStore",style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                        ),
          backgroundColor: Colors.red[300],
          centerTitle: true,
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index){
             setState((){
                currentPage = index;
             });
          },
          indicatorColor: Colors.amber[400],
          selectedIndex: currentPage,
          destinations: const [
            NavigationDestination(selectedIcon: Icon(Icons.home_outlined),icon:Icon(Icons.home), label: "Home Page"),
            NavigationDestination(selectedIcon: Icon(Icons.category_outlined),icon:Icon(Icons.category), label: "Category"),
            NavigationDestination(selectedIcon: Icon(Icons.person_2_outlined),icon:Icon(Icons.person), label: "Personal")
          ],

        ),
        body: <Widget>[
          const HomeScreen(),
          const CategoryScreen(),
          const PersonalScreen(),
        ][currentPage]
        
    );
  }
}