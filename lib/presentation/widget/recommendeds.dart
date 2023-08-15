import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopy/presentation/widget/product_details.dart';
import 'package:shopy/provider/all_product_provider.dart';
import 'package:shopy/provider/single_product_provider.dart';

import '../../resources/color_manager.dart';
import '../../resources/sized_manager.dart';

class Recomendeds extends ConsumerWidget {
  const Recomendeds({
    Key? key,
  }) : super(key: key);

  // final DummyProduct product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(allProductsProvider);
    final productId = ref.watch(selectedProductProvider);
    return SizedBox(
      child: products.when(
        data: (products) => ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: screenHeight(context) * 0.11,
                width: double.maxFinite,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth(context) * 0.02,
                      right: screenWidth(context) * 0.02),
                  child: InkWell(
                    onTap: () {
                      //ref.read(productId) = products.first;
                      // context.ref.read(productId).state = product.id;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(),
                        ),
                      );
                    },
                    child: Card(
                      // color: ColorManager.secondary,
                      elevation: 0.4,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: screenWidth(context) * 0.02,
                          right: screenWidth(context) * 0.02,
                          top: screenHeight(context) * 0.005,
                          bottom: screenHeight(context) * 0.005,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              AspectRatio(
                                aspectRatio: 1.8 / 2,
                                child: Image.asset(
                                  products[index].image,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth(context) * 0.1),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      products[index].title,
                                      style: TextStyle(
                                        fontWeight: FontWeightManager.semiBold,
                                        fontFamily:
                                            FontConstant.fontFamilyPoppins,
                                        fontSize: screenHeight(context) * 0.02,
                                        color: ColorManager.black,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          products[index].subTitle,
                                          style: TextStyle(
                                            fontWeight:
                                                FontWeightManager.semiBold,
                                            fontFamily:
                                                FontConstant.fontFamilyPoppins,
                                            fontSize:
                                                screenHeight(context) * 0.015,
                                            color: ColorManager.grayLight,
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth(context) * 0.09,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow.shade700,
                                          size: screenHeight(context) * 0.015,
                                        ),
                                        Text(
                                          products[index].rating.toString(),
                                          style: TextStyle(
                                            color: ColorManager.grayLight,
                                            fontSize:
                                                screenHeight(context) * 0.015,
                                            fontFamily:
                                                FontConstant.fontFamilyPoppins,
                                            fontWeight:
                                                FontWeightManager.semiBold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenHeight(context) * 0.04,
                                        ),
                                        Icon(Icons.add_circle),
                                      ],
                                    ),
                                    Text(
                                      products[index].price.toString(),
                                      style: TextStyle(
                                        color: ColorManager.black,
                                        fontSize: screenHeight(context) * 0.015,
                                        fontFamily:
                                            FontConstant.fontFamilyPoppins,
                                        fontWeight: FontWeightManager.semiBold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(right: 10),
                ),
            itemCount: products.length),
        error: (error, stackTrace) => Text("Error occurred $error"),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
