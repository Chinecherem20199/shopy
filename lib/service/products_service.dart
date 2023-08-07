import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopy/constants/firebase_constants.dart';
import 'package:shopy/models/product.dart';
import 'package:shopy/provider/firebase_provider.dart';

final productServiceProvider = Provider(
    (ref) => ProductService(firestore: ref.watch(firebaseFireStoreProvider)));

class ProductService {
  final FirebaseFirestore _fireStore;
  ProductService({required FirebaseFirestore firestore})
      : _fireStore = firestore;

  CollectionReference get _products =>
      _fireStore.collection(FirebaseConstant.products);
  Stream<List<Product>> getProduct() {
    return _products.snapshots().map((event) {
      List<Product> productsList = [];
      for (var doc in event.docs) {
        productsList.add(Product.fromMap(doc.data() as Map<String, dynamic>));
      }
      return productsList;
    });
  }
}
