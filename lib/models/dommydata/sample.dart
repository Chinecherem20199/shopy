import 'package:flutter/material.dart';
import 'package:shopy/models/dommydata/products.dart';

class Sample extends ChangeNotifier{
  final List<DummyProduct> _sampleProduct = [
    DummyProduct(
        id: "1",
        image: "assets/images/shoe2.png",
        title: "Nike Air Jordan",
        subTitle: "1 Mid 2021",
        description: "NIKE Air Jordan red canvas Shoe",
        price: 3500.0,
        rating: 4.5,
        quantity: 1
        // imagePath: imagePath
        ),
         DummyProduct(
        id: "2",
        image: "assets/images/jeans.jpg",
        title: "Jeans",
        subTitle: "Rose Jeans",
        description: "Blue Jeans",
        price: 880.0,
        rating: 4.5,
        quantity: 1
        // imagePath: imagePath
        ),
   
   DummyProduct(
        id: "3",
        image: "assets/images/bag1.jpg",
        title: "INA Bag",
        subTitle: "1 Mid 2021",
        description: "INA Leader Bag",
        price: 380.0,
        rating: 4.5,
        quantity: 1
        // imagePath: imagePath
        ),
    
    DummyProduct(
        id: "4",
        image: "assets/images/gown.jpg",
        title: "Gown",
        subTitle: "1 Mid 2022",
        description: "Red long gown",
        price: 880.0,
        rating: 4.5,
        quantity: 1
        // imagePath: imagePath
        ),
         DummyProduct(
        id: "5",
        image: "assets/images/shoe3.png",
        title: "Nike Air Jordan",
        subTitle: "1 New 2022",
        description: "Nike Air Jordan white canvas shoe",
        price: 2500.0,
        rating: 3.5,
        quantity: 1
        // imagePath: imagePath
        ),
        
        DummyProduct(
        id: "6",
        image: "assets/images/bag2.jpg",
        title: "MARY Bag",
        subTitle: "1 Mid 2022",
        description: "Mary Leader red bag",
        price: 380.0,
        rating: 4.5,
        quantity: 1
        // imagePath: imagePath
        ),
        DummyProduct(
        id: "7",
        image: "assets/images/shirt.jpg",
        title: "Shirt",
        subTitle: "1 Mid 2022",
        description: "Long slive shirt",
        price: 380.0,
        rating: 4.5,
        quantity: 1
        // imagePath: imagePath
        ),
        DummyProduct(
        id: "8",
        image: "assets/images/shoe4.png",
        title: "Nike Balon Jordan",
        subTitle: "1 Mid 2020",
        description: "Nike Balon Jordan canvas shoe",
        price: 3000.0,
        rating: 3.7,
        quantity: 1
        // imagePath: imagePath
        ),
        
       
        DummyProduct(
        id: "9",
        image: "assets/images/shoe1.png",
        title: "Air Jordan",
        subTitle: "1 Mid 2022",
        description: "Air Jordan canvas shoe",
        price: 4500.0,
        rating: 3.5,
        quantity: 1 
        // imagePath: imagePath
        ),
  ];
  //Cart
  List<DummyProduct> _cart = [];
  List<DummyProduct> get product => _sampleProduct;
  List<DummyProduct> get cart => _cart;

  //add to cart method
  void addToCart(DummyProduct product, int quantity){
    for(int i = 0; i < quantity; i++){
      _cart.add(product);
      
    }
    notifyListeners();
  }
  //remove to cart method
  void removeToCart(DummyProduct product){
    _cart.remove(product);
    notifyListeners();
  }

  // double calculateTotalPrice(){
  //   double totalPrice = 0;
   
  //   // for(int i = 0; i< cart.length; i++ ){
  //   //   //totalPrice += double.parse("${_cart[i].toString()}");

  //     totalPrice += cart[i]
  //   // }
  //   return totalPrice;
  // } 
  double getTotalPrice() {
    double totalPrice = 0;
    for (var item in _cart) {
      totalPrice += item.price * item.quantity;
    }
    return totalPrice;
  }
}