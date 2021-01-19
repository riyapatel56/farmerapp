
import 'package:farmer/farmerpart/home.dart';
import 'package:farmer/farmerpart/shopping/cart_screen.dart';
import 'package:farmer/farmerpart/shopping/main_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Things',style: GoogleFonts.roboto(),),
        backgroundColor: Colors.green[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
              Navigator.push(
                 context, MaterialPageRoute(builder: (context) => FarmerHome()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            iconSize: 28,
            onPressed: (){
              Navigator.pop(context);
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartScreen()));
            },
          ),
        ],
      ),
      body: MainBody()
    );
  }
}