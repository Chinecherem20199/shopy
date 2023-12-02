
import 'package:flutter/material.dart';

import '../category.dart';

class Sample extends ChangeNotifier{
  final List<Categories> _sampleCategory= [
    Categories(
      image: "assets/images/shoe2.png", 
      name: 'shoes'
        ),
    Categories(
      image: 'assets/images/bag1.jpg', 
      name: 'Bag'
        ),
        Categories(
      image: "assets/images/shirt.jpg", 
      name: 'Shirt'
        ),
        Categories(
      image: "assets/images/gown.jpg", 
      name: 'Gown'
        ),
        Categories(
      image: "assets/images/jeans.jpg", 
      name: 'Trouser'
        ),
  ];
    List<Categories> get category => _sampleCategory;
}