import 'package:flutter/material.dart';

import '../products.dart';

class CategoriesProvider extends ChangeNotifier {
  // Initializing with an empty list, will be populated after fetching or updating data
  List<Product> _allProducts = [
    Product(
      title: "Wireless Headphones",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
      image: "images/all/wireless.png",
      price: 120,
      seller: "Tariqul isalm",
      colors: [
        Colors.black,
        Colors.blue,
        Colors.orange,
      ],
      category: "Electronics",
      review: "(320 Reviews)",
      rate: 4.8,
      quantity: 1,
    ),
    Product(
      title: "Woman Sweter",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
      image: "images/all/sweet.png",
      price: 120,
      seller: "Joy Store",
      colors: [
        Colors.brown,
        Colors.deepPurple,
        Colors.pink,
      ],
      category: "Woman Fashion",
      review: "(32 Reviews)",
      rate: 4.5,
      quantity: 1,
    ),
    Product(
      title: "Smart Watch",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
      image: "images/all/miband.jpg",
      price: 55,
      seller: "Ram Das",
      colors: [
        Colors.black,
        Colors.amber,
        Colors.purple,
      ],
      category: "Electronics",
      review: "(20 Reviews)",
      rate: 4.0,
      quantity: 1,
    ),
    Product(
      title: "Mens Jacket",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
      image: "images/all/jacket.png",
      price: 155,
      seller: "Jacket Store",
      colors: [
        Colors.blueAccent,
        Colors.orange,
        Colors.green,
      ],
      category: "Men Fashion",
      review: "(20 Reviews)",
      rate: 5.0,
      quantity: 1,
    ),
    Product(
      title: "Watch",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
      image: "images/men fashion/watch.png",
      price: 1000,
      seller: "Jacket Store",
      colors: [
        Colors.lightBlue,
        Colors.orange,
        Colors.purple,
      ],
      category: "MenFashion",
      review: "(100 Reviews)",
      rate: 5.0,
      quantity: 1,
    ),
    Product(
      title: "Air Jordan",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
      image: "images/shoes/Air Jordan.png",
      price: 255,
      seller: "The Seller",
      colors: [
        Colors.grey,
        Colors.amber,
        Colors.purple,
      ],
      category: "Shoes",
      review: "(55 Reviews)",
      rate: 5.0,
      quantity: 1,
    ),
    Product(
      title: "Super Perfume",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
      image: "images/beauty/perfume.png",
      price: 155,
      seller: "Love Seller",
      colors: [
        Colors.purpleAccent,
        Colors.pinkAccent,
        Colors.green,
      ],
      category: "Beauty",
      review: "(99 Reviews)",
      rate: 4.7,
      quantity: 1,
    ),
    Product(
      title: "Wedding Ring",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
      image: "images/jewelry/wedding ring.png",
      price: 155,
      seller: "I Am Seller",
      colors: [
        Colors.brown,
        Colors.purpleAccent,
        Colors.blueGrey,
      ],
      category: "Jewelry",
      review: "(80 Reviews)",
      rate: 4.5,
      quantity: 1,
    ),
    Product(
      title: "  Pants",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
      image: "images/women fashion/pants.png",
      price: 155,
      seller: "PK Store",
      colors: [
        Colors.lightGreen,
        Colors.blueGrey,
        Colors.deepPurple,
      ],
      category: "WomenFashion",
      review: "(55 Reviews)",
      rate: 5.0,
      quantity: 1,
    ),
  ];
  List<Product> _shoes = [];

  List<Product> get allProducts => _allProducts;
  List<Product> get shoes => _shoes;

  // Method to set the all products list and notify listeners
  // void setAllProducts() {
  //   _allProducts
  //   notifyListeners(); // Notifying listeners that the data has changed
  // }

  // Method to filter shoes from all products and notify listeners
  void setShoesList() {
    _shoes = getShoesList();
    _allProducts = _shoes;
    print(_allProducts.length);
    notifyListeners(); // Notifying listeners that the shoes list has been updated
  }

  // Static method to get shoes list from all products
  static List<Product> getShoesList() {
    return all.where(
      (element) {
        return element.category.toLowerCase().contains("shoes");
      },
    ).toList();
  }
}
