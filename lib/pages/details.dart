// ignore_for_file: must_be_immutable

import 'package:ecommerce_shopping_app/model/item.dart';
import 'package:ecommerce_shopping_app/provider/cart.dart';
import 'package:ecommerce_shopping_app/shared/appbar.dart';
import 'package:ecommerce_shopping_app/shared/colos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  Item product;
  Details({super.key, required this.product});
  //const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool seelessmore = true;
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      backgroundColor: Bbody,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Ctext),
        elevation: 0.0,
        actions: const [ProductsAndPrice()],
        backgroundColor: appbarb,
        title: const Text(
          "Details",
          style: TextStyle(color: Ctext),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(100),bottomLeft: Radius.circular(100))),
            child: Image.asset(
              widget.product.imgPath,
              height: 250,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 50),
              alignment: Alignment.centerLeft,
              child: Text(
             widget.product.name,
         
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.favorite,
                color: Ctext,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.favorite,
                color: Ctext,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.favorite,
                color: Ctext,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.favorite,
                color: Ctext,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.favorite,
                color: Ctext,
              ),
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.grey,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              widget.product.details,
              style: const TextStyle(
                color: Ctext,
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
              maxLines: seelessmore ? 2 : null,
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  seelessmore = !seelessmore;
                });
              },
              child: Text(seelessmore ? "see more" : "see less")),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Size :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              for (int i = 5; i < 10; i++)
                Container(
                  height: 35,
                  width: 35,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0XFF475269).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1)
                      ]),
                  child: Text(i.toString()),
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "colors :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.red,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.green,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "\$  ${widget.product.price}",
                    style: const TextStyle(
                        color: Ctext, fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {
                       classInstancee.add(items[0]);
                  },
                  child: Container(
                    padding:  const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Ctext, borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  const [
                        Icon(
                          Icons.card_giftcard,
                          color: Colors.white,
                        ),

                        Text(
                          "Add To Card",
                          style: TextStyle(color: Colors.white),
                        ),


                      ],
                    ),
                  ),
                )
                     
              ],
            ),
          )
        ],
      ),
    );
  }
}
