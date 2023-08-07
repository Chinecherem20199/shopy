import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopy/resources/color_manager.dart';
import 'package:shopy/resources/sized_manager.dart';

import '../../provider/all_product_provider.dart';

class CategoriesList extends ConsumerWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(allProductsProvider);
    return SizedBox(
      height: 235,
      child: categories.when(
        data: (categories) => ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 150,
                child: Card(
                  elevation: 0.4,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              categories[index].image,
                              height: 118,
                              width: 134,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                categories[index].title,
                                style: TextStyle(
                                  fontWeight: FontWeightManager.bold,
                                  fontFamily: FontConstant.fontFamilyPoppins,
                                  fontSize: screenHeight(context) * 0.012,
                                  color: ColorManager.black,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.clip,
                              ),
                              Expanded(child: Container()),
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade700,
                                size: screenHeight(context) * 0.012,
                              ),
                              Text(
                                categories[index].rating.toString(),
                                style: TextStyle(
                                  color: ColorManager.grayLight,
                                  fontSize: screenWidth(context) * 0.015,
                                  fontFamily: FontConstant.fontFamilyPoppins,
                                  fontWeight: FontWeightManager.semiBold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            categories[index].subTitle,
                            style: TextStyle(
                              fontWeight: FontWeightManager.semiBold,
                              fontFamily: FontConstant.fontFamilyPoppins,
                              fontSize: screenHeight(context) * 0.012,
                              color: ColorManager.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                categories[index].description,
                                style: TextStyle(
                                  fontWeight: FontWeightManager.bold,
                                  fontFamily: FontConstant.fontFamilyPoppins,
                                  fontSize: 12,
                                  color: ColorManager.grayLight,
                                ),
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                              ),
                              Spacer(),
                              Icon(Icons.add_circle),
                            ],
                          ),
                          Text(
                            categories[index].price.toString(),
                            style: TextStyle(
                              fontWeight: FontWeightManager.bold,
                              fontFamily: FontConstant.fontFamilyPoppins,
                              fontSize: 12,
                              color: ColorManager.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(right: 10),
                ),
            itemCount: categories.length),
        error: (error, stackTrace) => Text("Error occurred $error"),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
