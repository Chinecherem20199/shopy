// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Product {
  String productId;
  String image;
  String name;
  String brand;
  String rating;
  String description;
  double price;
  double oldPrice;
  int size;
  Color color;
  bool isAvailable;
  Product({
    required this.productId,
    required this.image,
    required this.name,
    required this.brand,
    required this.rating,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.size,
    required this.color,
    required this.isAvailable,
  });


  Product copyWith({
    String? productId,
    String? image,
    String? name,
    String? brand,
    String? rating,
    String? description,
    double? price,
    double? oldPrice,
    int? size,
    Color? color,
    bool? isAvailable,
  }) {
    return Product(
      productId: productId ?? this.productId,
      image: image ?? this.image,
      name: name ?? this.name,
      brand: brand ?? this.brand,
      rating: rating ?? this.rating,
      description: description ?? this.description,
      price: price ?? this.price,
      oldPrice: oldPrice ?? this.oldPrice,
      size: size ?? this.size,
      color: color ?? this.color,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'image': image,
      'name': name,
      'brand': brand,
      'rating': rating,
      'description': description,
      'price': price,
      'oldPrice': oldPrice,
      'size': size,
      'color': color.value,
      'isAvailable': isAvailable,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      productId: map['productId'] as String,
      image: map['image'] as String,
      name: map['name'] as String,
      brand: map['brand'] as String,
      rating: map['rating'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      oldPrice: map['oldPrice'] as double,
      size: map['size'] as int,
      color: Color(map['color'] as int),
      isAvailable: map['isAvailable'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(productId: $productId, image: $image, name: $name, brand: $brand, rating: $rating, description: $description, price: $price, oldPrice: $oldPrice, size: $size, color: $color, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
  
    return 
      other.productId == productId &&
      other.image == image &&
      other.name == name &&
      other.brand == brand &&
      other.rating == rating &&
      other.description == description &&
      other.price == price &&
      other.oldPrice == oldPrice &&
      other.size == size &&
      other.color == color &&
      other.isAvailable == isAvailable;
  }

  @override
  int get hashCode {
    return productId.hashCode ^
      image.hashCode ^
      name.hashCode ^
      brand.hashCode ^
      rating.hashCode ^
      description.hashCode ^
      price.hashCode ^
      oldPrice.hashCode ^
      size.hashCode ^
      color.hashCode ^
      isAvailable.hashCode;
  }
}
