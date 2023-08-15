import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/single_product_provider.dart';
import '../../resources/color_manager.dart';
import '../../resources/sized_manager.dart';

class ProductDetailsPage extends ConsumerWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // use ref to listen to a provider
    final productId = ref.watch(selectedProductProvider);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth(context) * 0.07,
                right: screenWidth(context) * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios_new_outlined)),
                    SizedBox(
                      width: screenWidth(context) * 0.025,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Image.asset(
                      "assets/images/bag.png",
                      height: screenHeight(context) * 0.05,
                      width: screenWidth(context) * 0.05,
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight(context) * 0.01,
                ),
                Container(
                  height: screenHeight(context) * 0.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/shoe1.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight(context) * 0.01,
                ),
                Text(
                  "Nike Air Jordan",
                  style: TextStyle(
                    fontWeight: FontWeightManager.semiBold,
                    fontFamily: FontConstant.fontFamilyPoppins,
                    fontSize: screenHeight(context) * 0.02,
                    color: ColorManager.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1 Mid 2022",
                      style: TextStyle(
                        fontWeight: FontWeightManager.semiBold,
                        fontFamily: FontConstant.fontFamilyPoppins,
                        fontSize: screenHeight(context) * 0.02,
                        color: ColorManager.black,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: screenHeight(context) * 0.008),
                      height: screenHeight(context) * 0.04,
                      width: screenWidth(context) * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorManager.buttonBlack,
                      ),
                      child: Text(
                        "2000",
                        style: TextStyle(
                          fontWeight: FontWeightManager.medium,
                          fontFamily: FontConstant.fontFamilyPoppins,
                          fontSize: screenHeight(context) * 0.018,
                          color: ColorManager.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight(context) * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth(context) * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeightManager.semiBold,
                          fontFamily: FontConstant.fontFamilyPoppins,
                          fontSize: screenHeight(context) * 0.02,
                          color: ColorManager.black,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                            size: screenHeight(context) * 0.02,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: ColorManager.grayLight,
                              fontSize: screenHeight(context) * 0.02,
                              fontFamily: FontConstant.fontFamilyPoppins,
                              fontWeight: FontWeightManager.semiBold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight(context) * 0.01,
                ),
                Text(
                  "Nike Jordan is ranking as one of the best sport "
                  "shoes in the world. If leaves you in comfort at all times."
                  " We guarantee total comfortability with the lightweight new designs",
                  style: TextStyle(
                    color: ColorManager.black,
                    fontSize: screenHeight(context) * 0.015,
                    fontFamily: FontConstant.fontFamilyPoppins,
                    fontWeight: FontWeightManager.regular,
                  ),
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                ),
                SizedBox(
                  height: screenHeight(context) * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black45, // Set the border color
                                width: 2, // Set the border width
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                  color: ColorManager.black,
                                  fontSize: screenHeight(context) * 0.025,
                                  fontFamily: FontConstant.fontFamilyPoppins,
                                  fontWeight: FontWeightManager.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.008,
                        ),
                        Text(
                          "01",
                          style: TextStyle(
                            color: ColorManager.black,
                            fontSize: screenHeight(context) * 0.02,
                            fontFamily: FontConstant.fontFamilyPoppins,
                            fontWeight: FontWeightManager.semiBold,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.008,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black45, // Set the border color
                                width: 2, // Set the border width
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                  color: ColorManager.black,
                                  fontSize: screenHeight(context) * 0.02,
                                  fontFamily: FontConstant.fontFamilyPoppins,
                                  fontWeight: FontWeightManager.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Total:",
                          style: TextStyle(
                            color: ColorManager.black,
                            fontSize: screenHeight(context) * 0.02,
                            fontFamily: FontConstant.fontFamilyPoppins,
                            fontWeight: FontWeightManager.semiBold,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.006,
                        ),
                        Text(
                          "4000",
                          style: TextStyle(
                            color: ColorManager.black,
                            fontSize: screenHeight(context) * 0.02,
                            fontFamily: FontConstant.fontFamilyPoppins,
                            fontWeight: FontWeightManager.semiBold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight(context) * 0.02,
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button's onPressed function here
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black, // Set the text color
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth(context) * 0.025,
                            vertical:
                                screenHeight(context) * 0.015), // Set padding
                        textStyle: TextStyle(
                            fontSize: screenHeight(context) *
                                0.02), // Set the text style
                        elevation: 8, // Set the elevation (shadow)
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // Set border radius
                        ),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontWeight: FontWeightManager.semiBold,
                          fontFamily: FontConstant.fontFamilyPoppins,
                          fontSize: screenHeight(context) * 0.018,
                          color: ColorManager.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
