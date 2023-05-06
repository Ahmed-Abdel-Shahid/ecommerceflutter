import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_shopping_app/pages/checkout.dart';
import 'package:ecommerce_shopping_app/shared/appbar.dart';
import 'package:ecommerce_shopping_app/shared/colos.dart';
import 'package:ecommerce_shopping_app/widgets/allitemwidget.dart';
import 'package:ecommerce_shopping_app/widgets/itemrow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Bbody,
        appBar: AppBar(
          elevation: 0.0,
          actions: const [ProductsAndPrice()],
          backgroundColor: appbarb,
          title: const Text(
            "OP Shop",
            style: TextStyle(color: Ctext),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "search",
                      fillColor: Colors.white70,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Categories",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Ctext, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ////////////////////////
              const ItemRowWidget(),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Best Selling",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Ctext, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AllItemsWidget(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {
            
          },
          backgroundColor: Colors.transparent,
          height: 70, color: Ctext,
          // ignore: prefer_const_literals_to_create_immutables
          items: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                )),
            InkWell(
              onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CheckOut()),
                  );
                
              },
                child: const Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            )),
            // const Icon(
            //   Icons.list,
            //   size: 30,
            //   color: Colors.white,
            // ),
          ],
        ),
      ),
    );
  }
}
