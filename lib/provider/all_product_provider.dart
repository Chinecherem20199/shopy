import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopy/repository/dummy_repo.dart';

import '../models/dommydata/product.dart';

part 'all_product_provider.g.dart';

@riverpod
Future<List<DummyProduct>> allProducts(AllProductsRef ref) async {
  final ProductRepo productRepo = ref.watch(productRepoProvider);
  return productRepo.getProducts();
}
