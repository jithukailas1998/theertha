import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    //this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Ameya Coconut Oil",
      //price: 235,
      size: 20,
      description: dummyText,
      image: "assets/4.png",
      color: Colors.black12),
  Product(
      id: 2,
      title: "Chilly Powder",
      //price: 24,
      size: 8,
      description: dummyText,
      image: "assets/t3.png",
      color: Colors.black12),
  Product(
      id: 3,
      title: "Coriander Powder",
      //price: 21,
      size: 10,
      description: dummyText,
      image: "assets/t1.png",
      color: Colors.black12),
  Product(
      id: 4,
      title: "Turmeric Powder",
      //price: 20,
      size: 11,
      description: dummyText,
      image: "assets/t2.png",
      color: Colors.black12),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
