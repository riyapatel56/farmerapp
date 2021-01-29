
import 'package:farmer/farmerpart/shopping/cart/cart.dart';
import 'package:farmer/farmerpart/shopping/cart/cart_item.dart';
import 'package:farmer/farmerpart/shopping/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:firstapp/screens/cart_screen.dart';

class CartScreen extends StatelessWidget {

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {

    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          'My Cart',
          style: TextStyle(
            fontSize: 21,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
              Navigator.push(
                 context, MaterialPageRoute(builder: (context) => ShopScreen()));
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, i) => CartPdt(
                cart.items.values.toList()[i].quantity, 
                cart.items.values.toList()[i].name, 
                cart.items.values.toList()[i].id, 
                cart.items.values.toList()[i].price, 
                cart.items.keys.toList()[i],
              )),
          ),
          CheckoutButton(
              cart: cart,
            ),
          
        ],
      ),
    );
  }
}

class CheckoutButton extends StatefulWidget {

  final Cart cart;

  const CheckoutButton({@required this.cart});

  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: FlatButton(
        color: Colors.green[700],
        height: 30,
        minWidth: 30,
        child: Text('Checkout',style: TextStyle(color: Colors.white),),
        onPressed: (){
          Scaffold.of(context).showSnackBar(SnackBar(
            duration: Duration(seconds: 3),
            content: Text('Order Placed'),
          ));
        },
      ),
    );
  }
}

