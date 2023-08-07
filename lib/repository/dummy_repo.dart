import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopy/models/dommydata/product.dart';

part 'dummy_repo.g.dart';

@riverpod
ProductRepo productRepo(ProductRepoRef ref) => ProductRepo();

class ProductRepo {
  Future<List<DummyProduct>> getProducts() async {
    return Future.delayed(const Duration(microseconds: 300), () {
      return DummyProduct.sampleProduct;
    });
  }

  Future<DummyProduct> getProduct(String productId) {
    return Future.delayed(const Duration(microseconds: 300), () {
      return DummyProduct.sampleProduct
          .where((product) => product.id == productId)
          .first;
    });
  }
}
