import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/dommydata/product.dart';
import '../repository/dummy_repo.dart';

part 'single_product_provider.g.dart';

// @riverpod
// Future<DummyProduct> selectProduct(
//     SelectProductRef ref, String productId) async {
//   final productRepo = ref.watch(productRepoProvider);
//   return await productRepo.getProduct(productId);
// }
@riverpod
class SelectedProduct extends _$SelectedProduct {
  @override
  Future<DummyProduct> build() async {
    final ProductRepo productRepo = ref.watch(productRepoProvider);
    return await productRepo.getProduct("1");
  }

//
  void setSelectedProduct(productId) async {
    final ProductRepo productRepo = ref.watch(productRepoProvider);
    state = AsyncValue.data(
      await productRepo.getProduct(productId),
    );
  }
}
