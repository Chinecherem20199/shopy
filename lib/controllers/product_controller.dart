// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shopy/models/product.dart';

// import '../service/products_service.dart';

// final productControllerProvider =
//     StateNotifierProvider<ProductController, bool>((ref) {
//   final productsService = ref.watch(productServiceProvider);
//   return ProductController(productService: productsService, ref: ref);
// });
// /**
//  * Check later whether it maches yours
//  * */
// final categoriesProvider = StreamProvider((ref) {
//   final productControllers = ref.watch(productControllerProvider.notifier);
//   return productControllers.getProducts();
// });

// class ProductController extends StateNotifier<bool> {
//   final ProductService _productService;
//   final Ref _ref;
//   ProductController({required ProductService productService, required Ref ref})
//       : _productService = productService,
//         _ref = ref,
//         super(false);
//   Stream<List<Product>> getProducts() {
//     return _productService.getProduct();
//   }
// }
