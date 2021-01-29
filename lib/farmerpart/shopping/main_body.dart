
import 'package:farmer/farmerpart/shopping/allproductscommon/allproducts.dart';
import 'package:farmer/farmerpart/shopping/categories/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Categories",
                style: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w500,letterSpacing: 1.2),textAlign: TextAlign.center,
              ),
            ),
          ),
          Category(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Products",
                style: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w500,letterSpacing: 1.2),textAlign: TextAlign.center,),
            ),
          ),
          AllProducts(),
        ],
      );
  }
}