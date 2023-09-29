import 'package:flutter/material.dart';
import 'package:shopy/presentation/widget/product_details.dart';

import '../../models/dommydata/products.dart';
import '../../resources/color_manager.dart';
import '../../resources/sized_manager.dart';

class Recommens extends StatefulWidget {

  const Recommens({Key? key,}) : super(key: key);

  @override
  State<Recommens> createState() => _RecommensState();
}

class _RecommensState extends State<Recommens> {
  List sampleProduct =[
     DummyProduct(
        id: "1",
        image: "assets/images/shoe1.png",
        title: "Nike Air Jordan",
        subTitle: "1 Mid 2022",
        description: "NIKE",
        price: 4500.0,
        rating: 3.5
        // imagePath: imagePath
        ),
    DummyProduct(
        id: "2",
        image: "assets/images/shoe2.png",
        title: "Nike Air Jordan",
        subTitle: "1 Mid 2021",
        description: "NIKE",
        price: 3500.0,
        rating: 4.5
        // imagePath: imagePath
        ),
    DummyProduct(
        id: "3",
        image: "assets/images/shoe3.png",
        title: "Nike Air Jordan",
        subTitle: "1 New 2022",
        description: "NIKE",
        price: 2500.0,
        rating: 3.5
        // imagePath: imagePath
        ),
    DummyProduct(
        id: "4",
        image: "assets/images/shoe4.png",
        title: "Nike Balon Jordan",
        subTitle: "1 Mid 2020",
        description: "NIKE",
        price: 3000.0,
        rating: 3.7
        // imagePath: imagePath
        )
  ] ;
  // static List<DummyProduct> sampleProduct = [
  //   DummyProduct(
  //       id: "1",
  //       image: "assets/images/shoe1.png",
  //       title: "Nike Air Jordan",
  //       subTitle: "1 Mid 2022",
  //       description: "NIKE",
  //       price: 4500.0,
  //       rating: 3.5
  //       // imagePath: imagePath
  //       ),
  //   DummyProduct(
  //       id: "2",
  //       image: "assets/images/shoe2.png",
  //       title: "Nike Air Jordan",
  //       subTitle: "1 Mid 2021",
  //       description: "NIKE",
  //       price: 3500.0,
  //       rating: 4.5
  //       // imagePath: imagePath
  //       ),
  //   DummyProduct(
  //       id: "3",
  //       image: "assets/images/shoe3.png",
  //       title: "Nike Air Jordan",
  //       subTitle: "1 New 2022",
  //       description: "NIKE",
  //       price: 2500.0,
  //       rating: 3.5
  //       // imagePath: imagePath
  //       ),
  //   DummyProduct(
  //       id: "4",
  //       image: "assets/images/shoe4.png",
  //       title: "Nike Balon Jordan",
  //       subTitle: "1 Mid 2020",
  //       description: "NIKE",
  //       price: 3000.0,
  //       rating: 3.7
  //       // imagePath: imagePath
  //       )
  // ];
  List<DummyProduct> cart = [];
 // List<DummyProduct> get productCart => products;
  List<DummyProduct> get cartDetails => cart; 

  // final List<DummyProduct> products = List.generate(
  //   sampleProduct.length,
  //   (index) => DummyProduct(
  //     image: sampleProduct[index].image,
  //     title: sampleProduct[index].title,
  //     subTitle: sampleProduct[index].subTitle,
  //     description: sampleProduct[index].description,
  //     price: sampleProduct[index].price,
  //     rating: sampleProduct[index].rating
  //     //price: '${sampleProduct[index]}',
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: sampleProduct.length,
        //itemCount: products.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: screenHeight(context) * 0.11,
            width: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth(context) * 0.02,
                  right: screenWidth(context) * 0.02),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsPage(
                        product: sampleProduct[index],
                       // product: products[index],
                      ),
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
                              sampleProduct[index].image,
                              // products[index].image,
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
                                  sampleProduct[index].title,
                                  // products[index].title,
                                  style: TextStyle(
                                    fontWeight: FontWeightManager.semiBold,
                                    fontFamily: FontConstant.fontFamilyPoppins,
                                    fontSize: screenHeight(context) * 0.02,
                                    color: ColorManager.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      sampleProduct[index].subTitle,
                                      // products[index].subTitle,
                                      style: TextStyle(
                                        fontWeight: FontWeightManager.semiBold,
                                        fontFamily:
                                            FontConstant.fontFamilyPoppins,
                                        fontSize: screenHeight(context) * 0.015,
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
                                      sampleProduct[index].rating.toString(),
                                      // products[index].rating.toString(),
                                      style: TextStyle(
                                        color: ColorManager.grayLight,
                                        fontSize: screenHeight(context) * 0.015,
                                        fontFamily:
                                            FontConstant.fontFamilyPoppins,
                                        fontWeight: FontWeightManager.semiBold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenHeight(context) * 0.04,
                                    ),
                                    const Icon(Icons.add_circle),
                                  ],
                                ),
                                Text(
                                  sampleProduct[index].price.toString(),
                                  // products[index].price.toString(),
                                  style: TextStyle(
                                    color: ColorManager.black,
                                    fontSize: screenHeight(context) * 0.015,
                                    fontFamily: FontConstant.fontFamilyPoppins,
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
      ),
    );
  }
}
