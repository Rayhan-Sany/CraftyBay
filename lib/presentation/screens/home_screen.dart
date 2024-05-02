import 'package:crafty_bay/presentation/widgets/app_main_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label:'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.category_outlined),label: 'Category'),
        BottomNavigationBarItem(icon:Icon(Icons.shopping_cart_outlined),label: 'Cart'),
        BottomNavigationBarItem(icon:Icon(Icons.redeem_rounded),label: 'Wish'),
      ],
        currentIndex: 0,
        iconSize:38,

      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
