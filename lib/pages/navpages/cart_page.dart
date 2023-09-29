import 'package:flutter/material.dart';
import 'package:shopy/models/dommydata/products.dart';

class CartPage extends StatefulWidget {
   List<DummyProduct> cart = [];
  // final List<DummyProduct> cart = [];
   CartPage({Key? key,}) : super(key: key);
  // const CartPage({Key? key, required this.cart}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView.builder( itemCount: widget.cart.length,
        itemBuilder: (context, index){
          
       final DummyProduct product = widget.cart[index];
          return ListTile(
            title: Text(product.title),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (widget.cart[index] != null) {
                        widget.cart.removeAt(index);
                      }
                    });
                  },
                ),
                Text('1'), // Replace with the actual quantity
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Implement quantity increment logic
                  },
                ),
              ],
            ));

          
        },),
    ),);
  }
}
