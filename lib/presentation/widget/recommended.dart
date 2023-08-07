// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shopy/resources/sized_manager.dart';
//
// import '../../common/error.dart';
// import '../../common/loader.dart';
// import '../../controllers/product_controller.dart';
// import '../../resources/color_manager.dart';
//
// class Recommended extends ConsumerWidget {
//   const Recommended({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Column(
//         children: ref.watch(categoriesProvider).when(
//             data: (data) => List.generate(data.length, (index) {
//                   return SizedBox(
//                     height: screenHeight(context) * 0.11,
//                     width: double.maxFinite,
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           left: screenWidth(context) * 0.02,
//                           right: screenWidth(context) * 0.02),
//                       child: Card(
//                         // color: ColorManager.secondary,
//                         elevation: 0.4,
//                         child: Container(
//                           padding: EdgeInsets.only(
//                             left: screenWidth(context) * 0.02,
//                             right: screenWidth(context) * 0.02,
//                             top: screenHeight(context) * 0.005,
//                             bottom: screenHeight(context) * 0.005,
//                           ),
//                           child: SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             child: Row(
//                               children: [
//                                 AspectRatio(
//                                   aspectRatio: 1.8 / 2,
//                                   child: Image.asset(
//                                     data[index].image,
//                                     // height: 78,
//                                     // width: 70,
//                                   ),
//                                 ),
//                                 // SizedBox(
//                                 //   width: 70,
//                                 // ),
//                                 Padding(
//                                   padding: EdgeInsets.only(
//                                       left: screenWidth(context) * 0.1),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         data[index].name,
//                                         style: TextStyle(
//                                           fontWeight:
//                                               FontWeightManager.semiBold,
//                                           fontFamily:
//                                               FontConstant.fontFamilyPoppins,
//                                           fontSize:
//                                               screenHeight(context) * 0.02,
//                                           color: ColorManager.black,
//                                         ),
//                                       ),
//                                       Row(
//                                         children: [
//                                           Text(
//                                             data[index].brand,
//                                             style: TextStyle(
//                                               fontWeight:
//                                                   FontWeightManager.semiBold,
//                                               fontFamily: FontConstant
//                                                   .fontFamilyPoppins,
//                                               fontSize:
//                                                   screenHeight(context) * 0.015,
//                                               color: ColorManager.grayLight,
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: screenWidth(context) * 0.09,
//                                           ),
//                                           Icon(
//                                             Icons.star,
//                                             color: Colors.yellow.shade700,
//                                             size: screenHeight(context) * 0.015,
//                                           ),
//                                           Text(
//                                             data[index].rating,
//                                             style: TextStyle(
//                                               color: ColorManager.grayLight,
//                                               fontSize:
//                                                   screenHeight(context) * 0.015,
//                                               fontFamily: FontConstant
//                                                   .fontFamilyPoppins,
//                                               fontWeight:
//                                                   FontWeightManager.semiBold,
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: screenHeight(context) * 0.04,
//                                           ),
//                                           Icon(Icons.add_circle),
//                                         ],
//                                       ),
//                                       Text(
//                                         data[index].price.toString(),
//                                         style: TextStyle(
//                                           color: ColorManager.black,
//                                           fontSize:
//                                               screenHeight(context) * 0.015,
//                                           fontFamily:
//                                               FontConstant.fontFamilyPoppins,
//                                           fontWeight:
//                                               FontWeightManager.semiBold,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//     error: (error, stackTrace)=>  Error(), loading: () {  },
//
//   }
// }
