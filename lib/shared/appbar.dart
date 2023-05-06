import 'package:ecommerce_shopping_app/pages/checkout.dart';
import 'package:ecommerce_shopping_app/provider/cart.dart';
import 'package:ecommerce_shopping_app/shared/colos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Row(
      children: [
       
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned(
                bottom: 24,
                child: Container(
                    padding: const EdgeInsets.only(top: 7),
                    decoration: const BoxDecoration(
                        //  color: Colors.red,
                        shape: BoxShape.circle),
                    child:  Text(
                  "${classInstancee.selectedProducts.length}",
                     
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckOut(),
                        ),
                      );
                },
                icon: const Icon(
                  Icons.add_shopping_cart,
                  color: Ctext,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 30, top: 10),
                  padding: const EdgeInsets.all(3),
                  child: Text(
                   "\$ ${classInstancee.price} ",
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 12),
          child: Text(
            "",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
