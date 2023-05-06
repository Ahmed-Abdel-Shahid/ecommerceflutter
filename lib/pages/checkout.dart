import 'package:ecommerce_shopping_app/provider/cart.dart';
import 'package:ecommerce_shopping_app/shared/appbar.dart';
import 'package:ecommerce_shopping_app/shared/colos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Ctext),
        title: const Text(
          "CheckOut",
          style: TextStyle(color: Ctext),
        ),
        backgroundColor: appbarb,
        actions: const [ProductsAndPrice()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 500,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: classInstancee.selectedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        subtitle: Text(
                            "${classInstancee.selectedProducts[index].price}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              classInstancee.selectedProducts[index].imgPath),
                        ),
                        title:
                            Text(classInstancee.selectedProducts[index].name),
                        trailing: IconButton(
                            onPressed: () {
                               classInstancee.delete(classInstancee.selectedProducts[index]);
                            }, icon: const Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {
             
           
            
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Ctext),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
                "Pay \$${classInstancee.price} ",
              style: const TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
