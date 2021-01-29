
import 'package:farmer/farmerpart/shopping/allproductscommon/pdt_detail_screen.dart';
import 'package:farmer/farmerpart/shopping/allproductscommon/products.dart';
import 'package:farmer/farmerpart/shopping/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PdtItem extends StatelessWidget {

  final String name;
  final String imageUrl;

  PdtItem({
    this.name,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {

    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailPage.routeName,arguments: pdt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.asset(imageUrl),
          footer: GridTileBar(
            title: Text(name),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: (){
                //SHow item added to cart
                Scaffold.of(context).showSnackBar(SnackBar(
                  duration: Duration(seconds: 3),
                  content: Text('Item Added to Cart'),
                ));
                cart.addItem(pdt.id, pdt.name, pdt.price);
              },
            ),
            backgroundColor: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}
