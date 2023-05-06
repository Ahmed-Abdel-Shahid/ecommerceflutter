import 'package:ecommerce_shopping_app/pages/home.dart';
import 'package:ecommerce_shopping_app/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {return Cart();},

      child: const MaterialApp(
       debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}