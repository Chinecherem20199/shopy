import 'package:flutter/material.dart';
import 'package:shopy/resources/sized_manager.dart';

import '../resources/color_manager.dart';

class OnbondingPage extends StatefulWidget {
  const OnbondingPage({Key? key}) : super(key: key);

  @override
  State<OnbondingPage> createState() => _OnbondingPageState();
}

class _OnbondingPageState extends State<OnbondingPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.pushNamed(
  //       context,
  //       "/splash",
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: ColorManager.primary),
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight(context) * 0.05,
            bottom: screenHeight(context) * 0.02,
            left: screenWidth(context) * 0.05,
            right: screenWidth(context) * 0.05,
          ),
          child: Column(
            children: [
              SizedBox(
                // height: screenHeight(context) * 0.1,
                // width: double.infinity,
                height: screenHeight(context) * 0.35,
                width: screenWidth(context) * 0.7,
                child: Image.asset(
                  "assets/images/shoe3.png",
                  height: screenHeight(context) * 0.35,
                  width: screenWidth(context) * 0.7,
                ),
              ),
              Text(
                style: TextStyle(
                  fontFamily: FontConstant.fontFamilyPoppins,
                  fontSize: screenWidth(context) * 0.09,
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.regular,
                ),
                overflow: TextOverflow.clip,
                // textAlign: TextAlign.center,
                "Your favorite shoes",
              ),
              SizedBox(
                height: screenHeight(context) * 0.02,
              ),
              Text(
                style: TextStyle(
                  fontFamily: FontConstant.fontFamilyPoppins,
                  fontSize: screenWidth(context) * 0.03,
                  color: ColorManager.white,
                  fontWeight: FontWeightManager.regular,
                ),
                overflow: TextOverflow.clip,
                // textAlign: TextAlign.center,
                "Find the latest men’s running shoes for trail, "
                "road & track from top brands",
              ),
              SizedBox(
                height: screenHeight(context) * 0.15,
              ),
              AspectRatio(
                aspectRatio: 0.9 / 0.1,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth(context) * 0.09,
                    right: screenWidth(context) * 0.09,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: screenWidth(context) * 0.09,
                      right: screenWidth(context) * 0.09,
                    ),
                    // height: screenHeight(context) * 0.09,
                    // width: screenWidth(context) * 0.5,
                    decoration: BoxDecoration(
                      color: ColorManager.black2,
                      borderRadius: BorderRadius.circular(
                        screenWidth(context) * 0.04,
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          "/home",
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth(context) * 0.07,
                          right: screenWidth(context) * 0.07,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment,
                          children: [
                            Text(
                              "Continue",
                              style: TextStyle(
                                fontSize: screenWidth(context) * 0.03,
                                color: ColorManager.white,
                                fontFamily: FontConstant.fontFamilyPoppins,
                                fontWeight: FontWeightManager.semiBold,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth(context) * 0.1,
                            ),
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: ColorManager.primary,
                              size: screenWidth(context) * 0.05,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
