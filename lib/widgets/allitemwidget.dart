// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, use_key_in_widget_constructors, must_be_immutable

import 'package:ecommerce_shopping_app/model/item.dart';
import 'package:ecommerce_shopping_app/pages/details.dart';
import 'package:ecommerce_shopping_app/provider/cart.dart';
import 'package:ecommerce_shopping_app/shared/colos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllItemsWidget extends StatelessWidget {
  // const AllItemsWidget({super.key});
  double index = 0;
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return SingleChildScrollView(
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 300,
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                decoration: BoxDecoration(
                    color: appbarb, borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Ctext,
                          ),
                          child: Text(
                            "\$ ${items[index].discount}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        )
                      ],
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Details(product: items[index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          items[index].imgPath,
                          height: 100,
                          width: 120,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(items[index].name,
                            style: TextStyle(color: Ctext, fontSize: 15)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(items[index].details,
                            maxLines: 1,
                            style: TextStyle(color: Ctext, fontSize: 15)),
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${items[index].price}",
                          style: TextStyle(
                              color: Ctext, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {
                              classInstancee.add(items[index]);
                            },
                            icon: Icon(
                              Icons.add,
                              color: Ctext,
                            ))
                      ],
                    ),
                  ],
                )
                );
          }),
    );
  }
}
