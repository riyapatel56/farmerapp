import 'package:farmer/farmerpart/shopping/allproducts.dart';
import 'package:farmer/farmerpart/shopping/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Center(
            child: Text(
              "Categories",
              style: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w500,letterSpacing: 1.2),textAlign: TextAlign.center,
            ),
          ),
          Category(),
          Center(
            child: Text(
              "Products",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,letterSpacing: 1.2),textAlign: TextAlign.center,),
          ),
          AllProducts(),
        ],
      );
  }
}