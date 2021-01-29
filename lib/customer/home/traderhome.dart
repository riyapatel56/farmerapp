import 'package:farmer/customer/corganiccrop/ccotton.dart';
import 'package:farmer/customer/home/cuscropcard.dart';
import 'package:farmer/customer/home/org.dart';
import 'package:farmer/customer/home/tr.dart';
import 'package:farmer/farmerpart/organiccrops/almond.dart';
import 'package:farmer/farmerpart/organiccrops/coffee.dart';
import 'package:farmer/farmerpart/tradcrops/lime.dart';
import 'package:farmer/farmerpart/tradcrops/tomato.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TraderHomebody extends StatefulWidget {
  @override
  _TraderHomebodyState createState() => _TraderHomebodyState();
}

class _TraderHomebodyState extends State<TraderHomebody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text('Select Or Change Category'),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(top:0.008 * MediaQuery.of(context).size.height, bottom:0.012 * MediaQuery.of(context).size.height),
              child: Text(
                'Categories',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrganicCrops()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top:0.008 * MediaQuery.of(context).size.height,bottom: 0.008 * MediaQuery.of(context).size.height,right:0.008 * MediaQuery.of(context).size.height,left: 0.014 * MediaQuery.of(context).size.height),
                    child: Container(
                      color: Colors.blueGrey[50],
                      height: 0.2100 * MediaQuery.of(context).size.height,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0.018 * MediaQuery.of(context).size.height,),
                        child: Column(
                          children: [
                            Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.all(0.010 * MediaQuery.of(context).size.height,),
                            width: 0.199 * MediaQuery.of(context).size.height,
                            height: 0.110 * MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.001 * MediaQuery.of(context).size.height,),
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/o.jpg'),
                              ),
                            ),
                          ),
                            Padding(
                              padding: EdgeInsets.all(0.008 * MediaQuery.of(context).size.height,),
                              child: Text(
                                'Organic \nCrops',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  fontSize: 0.023 * MediaQuery.of(context).size.height,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraditionalCrops()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top:0.008 * MediaQuery.of(context).size.height,bottom: 0.008 * MediaQuery.of(context).size.height,right:0.014 * MediaQuery.of(context).size.height,),
                    child: Container(
                      color: Colors.blueGrey[50],
                      height: 0.2100 * MediaQuery.of(context).size.height,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0.018 * MediaQuery.of(context).size.height,),
                        child: Column(
                          children: [
                            Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.all(0.010 * MediaQuery.of(context).size.height,),
                            width: 0.199 * MediaQuery.of(context).size.height,
                            height: 0.110 * MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.001 * MediaQuery.of(context).size.height,),
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/t.jpg'),
                              ),
                            ),
                          ),
                            Padding(
                              padding: EdgeInsets.all(0.008 * MediaQuery.of(context).size.height,),
                              child: Text(
                                'Traditional \nCrops',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  fontSize: 0.023 * MediaQuery.of(context).size.height,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(0.008 * MediaQuery.of(context).size.height,),
            child: Center(
              child: Text(
                'Crops',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 25 
                ),
              ),
            ),
          ),
          Container(
            height: 0.598 * MediaQuery.of(context).size.height,
            child: AllProducts()
          ),
        ],
      ),
    );
  }
}

class AllProducts extends StatefulWidget {
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom : 0.058 * MediaQuery.of(context).size.height,),
                child: GridView.count(
                  crossAxisCount: 2,
                  //childAspectRatio: 0.00096 * MediaQuery.of(context).size.height,
                  children: [
                    CusCropCard(
                      title: 'Coffee',
                      image: "assets/images/oc.jpg",
                      press: () {
                      },
                      page: Coffee(),
                    ),
                    CusCropCard(
                      title: 'Almond',
                      image: "assets/images/almond.jpg",
                      press: () {
                      },
                      page: Almond(),
                    ),
                    CusCropCard(
                      title: 'Desert Lime',
                      image: "assets/images/lime.jpg",
                      press: () {
                      },
                      page: Lime(),
                    ),
                    CusCropCard(
                      title: 'Tomato',
                      image: "assets/images/lime.jpg",
                      press: () {
                      },
                      page: Tomatos(),
                    ),
                    CusCropCard(
                      title: 'Cotton',
                      image: "assets/images/cotton.jpg",
                      press: () {
                      },
                      page: CCotton(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}