import 'package:flutter/material.dart';
import 'package:shopy/resources/color_manager.dart';
import 'package:shopy/resources/sized_manager.dart';

import '../../presentation/widget/categories.dart';
import '../../presentation/widget/recommen.dart';

class MainPage extends StatefulWidget {
  //final DummyProduct hotel;
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> dataList = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight(context) * 0.0625,
            left: screenWidth(context) * 0.025,
            right: screenWidth(context) * 0.025,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: screenWidth(context) * 0.025,
                  right: screenWidth(context) * 0.025,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.menu_outlined),
                    SizedBox(
                      width: screenWidth(context) * 0.025,
                    ),
                    const Text("Rilex Shoes"),
                    Expanded(
                      child: Container(),
                    ),
                    // SizedBox(
                    //   width: 290,
                    // ),
                    Image.asset(
                      "assets/images/bag.png",
                      height: screenHeight(context) * 0.04,
                      width: screenWidth(context) * 0.04,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenWidth(context) * 0.0312,
              ),
              Card(
                shadowColor: const Color(0xff968E8E),
                margin: EdgeInsets.only(
                  left: screenWidth(context) * 0.025,
                  right: screenWidth(context) * 0.025,
                ),
                elevation: 1,
                color: const Color(0xffECE0E0),
                child: SizedBox(
                  height: screenWidth(context) * 0.09,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          size: screenHeight(context) * 0.025,
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.tune_outlined,
                          size: screenHeight(context) * 0.025,
                          color: Colors.black,
                        ),
                        hintText: "Search Product"),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight(context) * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                      color: ColorManager.black2,
                      fontFamily: FontConstant.fontFamilyPoppins,
                      fontSize: screenHeight(context) * 0.027,
                      fontWeight: FontWeightManager.semiBold,
                    ),
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                        color: ColorManager.primary,
                        fontFamily: FontConstant.fontFamilyPoppins,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight(context) * 0.012,
              ),
              const CategoriesList(),
              SizedBox(
                height: screenHeight(context) * 0.012,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                      color: ColorManager.black2,
                      fontFamily: FontConstant.fontFamilyPoppins,
                      fontSize: screenHeight(context) * 0.027,
                      fontWeight: FontWeightManager.semiBold,
                    ),
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                        color: ColorManager.primary,
                        fontFamily: FontConstant.fontFamilyPoppins,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight(context) * 0.012,
              ),
              //Recomendeds(),
              Recommens(),
            ],
          ),
        ),
      ),
    );
  }
}
