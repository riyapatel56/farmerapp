import 'package:farmer/farmerpart/editcrops/cropcard.dart';
import 'package:farmer/farmerpart/editcrops/orgcrop.dart';
import 'package:farmer/farmerpart/editcrops/trcrop.dart';
import 'package:farmer/farmerpart/organiccrops/almond.dart';
import 'package:farmer/farmerpart/organiccrops/coffee.dart';
import 'package:farmer/farmerpart/organiccrops/cotton.dart';
import 'package:farmer/farmerpart/tradcrops/lime.dart';
import 'package:farmer/farmerpart/tradcrops/tomato.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        elevation: 0,
        title: Text('Join Any Crops',style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.w600),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top:0.008 * MediaQuery.of(context).size.height, bottom:0.012 * MediaQuery.of(context).size.height),
                child: Text(
                  'Categories',
                  style: TextStyle(
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrganicCrop()));
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
                                border: Border.all(color: Colors.black54, width: 0.001 * MediaQuery.of(context).size.height,),
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
                                  style: TextStyle(
                                    fontSize: 0.021 * MediaQuery.of(context).size.height,
                                    fontWeight: FontWeight.w500,
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraditionalCrop()));
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
                                border: Border.all(color: Colors.black54,  width: 0.001 * MediaQuery.of(context).size.height,),
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
                                  style: TextStyle(
                                    fontSize: 0.021 * MediaQuery.of(context).size.height,
                                    fontWeight: FontWeight.w500,
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
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Container(
            height: 0.598 * MediaQuery.of(context).size.height,
              child: AllProducts(),
            ),
          ],
        ),
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
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom : 0.058 * MediaQuery.of(context).size.height,),
              child: GridView.count(
                crossAxisCount: 2,
                //childAspectRatio: 0.85,
                children: [
                  CropCard(
                    title: 'Coffee',
                    image: "assets/images/oc.jpg",
                    press: () {
                    },
                    page: Coffee(),
                  ),
                  CropCard(
                    title: 'Almond',
                    image: "assets/images/almond.jpg",
                    press: () {
                    },
                    page: Almond(),
                  ),
                  CropCard(
                    title: 'Desert Lime',
                    image: "assets/images/lime.jpg",
                    press: () {
                    },
                    page: Lime(),
                  ),
                  CropCard(
                    title: 'Tomato',
                    image: "assets/images/tomato.jpg",
                    press: () {
                    },
                    page: Tomatos(),
                  ),
                  CropCard(
                    title: 'Cotton',
                    image: "assets/images/cotton.jpg",
                    press: () {
                    },
                    page: Cotton(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}