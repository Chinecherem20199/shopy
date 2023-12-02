

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/dommydata/products.dart';
import '../../models/dommydata/sample.dart';
import '../../resources/color_manager.dart';
import '../../resources/sized_manager.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
   void removeFromCart(DummyProduct product, BuildContext context){
    final shop = context.read<Sample>();
    shop.removeToCart(product);


   }
   void totalPrice(){

   }
  @override
  Widget build(BuildContext context) {
    return Consumer<Sample>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("My  Cart")),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.grey[800],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index){
                  final DummyProduct product = value.cart[index];
                  final String itemName = product.title;
                  final String itemImage = product.image;
                  final double itemPrice = product.price;
            
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffECE0E0),
                      borderRadius: BorderRadius.circular(8),
                      ),
                      margin: EdgeInsets.only(left: screenWidth(context)*0.025, right: screenWidth(context)*0.025, top:screenHeight(context)*0.025),
                     
                    child: ListTile(
                      leading: Image.asset(itemImage, ),
                      title: Text(itemName, 
                      style: TextStyle(color: Colors.grey[800],  
                      fontFamily: FontConstant.fontFamilyPoppins,
                      fontWeight: FontWeightManager.bold, 
                      fontSize: screenWidth(context)* 0.035),),
                      subtitle: Text("\$ ${itemPrice.toString()}",
                      style: TextStyle(color: Colors.grey[800],
                      fontFamily: FontConstant.fontFamilyPoppins,
                       fontWeight: FontWeightManager.semiBold,
                       fontSize: screenWidth(context)* 0.025
                      ),),
                      trailing: IconButton(
                       onPressed: (){
                        Provider.of<Sample>(context, listen: false).removeToCart(product);
                       },
                      // onPressed: ()=> removeFromCart(product, context),
                        icon: const Icon(Icons.delete, color: Colors.grey,),
                      ),
                    ),
                  );
                },),
            ),
            SizedBox(height: screenHeight(context)* 0.015,),
             //Total Price
             Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(bottom: screenHeight(context)* 0.04, left: screenWidth(context)* 0.05, right: screenWidth(context)* 0.05),
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffECE0E0),
             ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Total Price", style: TextStyle(color: Colors.grey[800],
                  fontWeight: FontWeightManager.bold,
                              fontFamily: FontConstant.fontFamilyPoppins,
                              fontSize: screenHeight(context) * 0.02,
                 ),),
                 
                 Text("\$ ${value.getTotalPrice().toString()}",),
               ],
             ),
             ),
              Center(
                      child: Container(
                        padding: EdgeInsets.only(bottom: screenHeight(context)* 0.04, left: screenWidth(context)* 0.05, right: screenWidth(context)* 0.05),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            
                            // Add your button's onPressed function here
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.grey[800], // Set the text color
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
                            'Pay now',
                            style: TextStyle(
                              fontWeight: FontWeightManager.bold,
                              fontFamily: FontConstant.fontFamilyPoppins,
                              fontSize: screenHeight(context) * 0.02,
                              color: ColorManager.white,
                            ),
                          ),
                        ),
                      ),
                    )
          ],
          // Pay button
          

        ),
      ),
    );
  }
}