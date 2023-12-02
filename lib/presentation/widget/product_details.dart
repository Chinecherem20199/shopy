// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopy/models/dommydata/sample.dart';

import '../../models/dommydata/products.dart';
import '../../resources/color_manager.dart';
import '../../resources/sized_manager.dart';

class ProductDetailsPage extends StatefulWidget {
  final DummyProduct product;
  const ProductDetailsPage( {Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

  class _ProductDetailsPageState extends State<ProductDetailsPage> {

    List<DummyProduct> cart = [];
    //List<DummyProduct> get productCart => products;
    List<DummyProduct> get cartDetails => cart; 

    int quantityCount = 0;
    // decrement quantity
    void decrementQuantity() {
      setState(() {
        if (quantityCount > 0) {
          quantityCount--;
        }
      });
  }
  //increment quantity
    void incrementQuantity() {
      setState(() {
        setState(() {
          quantityCount++;
        });
      });
    }

   void addToCart(){
    if(quantityCount>0){
      //assess to sample shop
      final shop = context.read<Sample>();

      //add to cart
      shop.addToCart(widget.product, quantityCount);

      // Show successfull message here
      showDialog(
        barrierDismissible: false,
        context: context, builder: (context)=>
       AlertDialog(content: const Text("Added to cart succesfully."),
      actions: [IconButton(onPressed: (){
        Navigator.pop(context);
        Navigator.pop(context);
      }, icon: const Icon(Icons.done),),],),);
    }
   }
  @override
  Widget build(BuildContext context) {
    // use ref to listen to a provider
    //final products = ref.read(selectedProductProvider);

    //final selectProductDetails = ref.watch(selectedProductProviders);

    //final productId = ref.read(selectedProductProvider);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: widget.product != null
            ? Padding(
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
                            child:
                                const Icon(Icons.arrow_back_ios_new_outlined)),
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
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            //"assets/images/shoe1.png",
                           widget.product.image,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight(context) * 0.01,
                    ),
                    Text(
                      widget.product.title,
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
                          widget.product.subTitle,
                          style: TextStyle(
                            fontWeight: FontWeightManager.semiBold,
                            fontFamily: FontConstant.fontFamilyPoppins,
                            fontSize: screenHeight(context) * 0.02,
                            color: ColorManager.black,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: screenHeight(context) * 0.008),
                          height: screenHeight(context) * 0.04,
                          width: screenWidth(context) * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorManager.buttonBlack,
                          ),
                          child: Text(
                            '\$ ${widget.product.price.toStringAsFixed(2)}',
                            //widget.product.price.toString(),
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
                      padding:
                          EdgeInsets.only(right: screenWidth(context) * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.product.description,
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
                                widget.product.rating.toString(),
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
                              onTap: decrementQuantity,
                              //onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        Colors.black45, // Set the border color
                                    width: 2, // Set the border width
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      color: ColorManager.black,
                                      fontSize: screenHeight(context) * 0.025,
                                      fontFamily:
                                          FontConstant.fontFamilyPoppins,
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
                              "$quantityCount",
                              //"01",
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
                              onTap: incrementQuantity,
                              // onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        Colors.black45, // Set the border color
                                    width: 2, // Set the border width
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      color: ColorManager.black,
                                      fontSize: screenHeight(context) * 0.02,
                                      fontFamily:
                                          FontConstant.fontFamilyPoppins,
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
                              "Price:",
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
                              '\$ ${widget.product.price.toStringAsFixed(2)}',
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
                            addToCart();
                            // Add your button's onPressed function here
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black, // Set the text color
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth(context) * 0.025,
                                vertical: screenHeight(context) *
                                    0.015), // Set padding
                            textStyle: TextStyle(
                                fontSize: screenHeight(context) *
                                    0.02), // Set the text style
                            elevation: 8, // Set the elevation (shadow)
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Set border radius
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
              )
            : const Center(
                child: Text('No product selected'),
              ),
      ),
    ));
  }
}
