import 'package:flutter/material.dart';
import 'package:shopy/models/dommydata/products.dart';

class Sample extends ChangeNotifier{
  final List<DummyProduct> _sampleProduct = [
    DummyProduct(
        id: "1",
        image: "assets/images/shoe1.png",
        title: "Nike Air Jordan",
        subTitle: "1 Mid 2022",
        description: "NIKE",
        price: 4500.0,
        rating: 3.5
        // imagePath: imagePath
        ),
    DummyProduct(
        id: "2",
        image: "assets/images/shoe2.png",
        title: "Nike Air Jordan",
        subTitle: "1 Mid 2021",
        description: "NIKE",
        price: 3500.0,
        rating: 4.5
        // imagePath: imagePath
        ),
    DummyProduct(
        id: "3",
        image: "assets/images/shoe3.png",
        title: "Nike Air Jordan",
        subTitle: "1 New 2022",
        description: "NIKE",
        price: 2500.0,
        rating: 3.5
        // imagePath: imagePath
        ),
    DummyProduct(
        id: "4",
        image: "assets/images/shoe4.png",
        title: "Nike Balon Jordan",
        subTitle: "1 Mid 2020",
        description: "NIKE",
        price: 3000.0,
        rating: 3.7
        // imagePath: imagePath
        )
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
}