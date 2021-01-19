//import 'package:farmer/loginpage/farmerlogin.dart';
import 'package:farmer/farmerpart/article/articlecard.dart';
import 'package:farmer/farmerpart/generatebill/traders.dart';
import 'package:farmer/farmerpart/shopping/cart.dart';
import 'package:farmer/farmerpart/shopping/cart_screen.dart';
import 'package:farmer/farmerpart/shopping/pdt_detail_screen.dart';
import 'package:farmer/farmerpart/shopping/products.dart';
import 'package:farmer/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Articles(),
        ),
        ChangeNotifierProvider.value(
          value: Traders(),
        ),
        ChangeNotifierProvider.value(
        value: Cart(),
      ),
      ],

      child: MaterialApp(
        title: 'Farmer App',
        home: OnBoardingScreen(),
        routes: {
        DetailPage.routeName: (context) => DetailPage(),
        CartScreen.routeName: (context) => CartScreen(),
      },
      ),
    );
  }
}
