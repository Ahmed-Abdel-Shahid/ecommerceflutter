class Item {
  String imgPath;
  double price;
  String location;
  String name;
  double discount;
String details;
  Item({required this.imgPath, required this.name,required this.discount,required this.details, required this.price, this.location = "Main branch"});
}

final List<Item> items = [
 Item(name: "product1",discount:50, price: 12.99, imgPath: "images/1.png",details: "lorem simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", location: "Ali shop"),
Item(name: "product2",discount:50, price: 15.99, imgPath: "images/2.png",details: "lorem simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
Item(name: "product3",discount:50, price: 90.99, imgPath: "images/3.png",details: "lorem simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
  Item(name: "product4",discount:50, price: 12.99, imgPath: "images/4.png",details: "lorem simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
  Item(name: "product5",discount:50, price: 55.99, imgPath: "images/5.png",details: "lorem simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
  Item(name: "product6",discount:50, price: 13.99, imgPath: "images/6.png",details: "lorem simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
  Item(name: "product7",discount:50, price: 75.99, imgPath: "images/7.png",details: "lorem simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
 
];
