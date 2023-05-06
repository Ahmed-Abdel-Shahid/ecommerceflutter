import 'package:ecommerce_shopping_app/shared/colos.dart';
import 'package:flutter/material.dart';
class ItemRowWidget extends StatelessWidget {
  const ItemRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
scrollDirection: Axis.horizontal,

child:           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: appbarb,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/1.png",
                          height: 50,
                          width: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Sandal",
                            style: TextStyle(
                                color: Ctext, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                    Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: appbarb,
              
                  ),
                  child: Row(
                    children:  [
                     
            Image.asset(
                        "images/2.png",
                        height: 50,
                        width: 50,
                       
                      ),
                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("Sandal",style: TextStyle(color: Ctext,fontWeight: FontWeight.bold),),
                       ),
                  
                    ],
                  ),
                ),
              ),
                  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: appbarb,
              
                  ),
                  child: Row(
                    children:  [
                     
            Image.asset(
                        "images/3.png",
                        height: 50,
                        width: 50,
                       
                      ),
                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("Sandal",style: TextStyle(color: Ctext,fontWeight: FontWeight.bold),),
                       ),
                  
                    ],
                  ),
                ),
              ),
                  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: appbarb,
              
                  ),
                  child: Row(
                    children:  [
                     
            Image.asset(
                        "images/4.png",
                        height: 50,
                        width: 50,
                       
                      ),
                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("Sandal",style: TextStyle(color: Ctext,fontWeight: FontWeight.bold),),
                       ),
                  
                    ],
                  ),
                ),
              ),
                ////////////////////here
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: appbarb,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/5.png",
                          height: 50,
                          width: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Sandal",
                            style: TextStyle(
                                color: Ctext, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: appbarb,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/6.png",
                          height: 50,
                          width: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Sandal",
                            style: TextStyle(
                                color: Ctext, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



              ],
            ),



            
    );
  }
}