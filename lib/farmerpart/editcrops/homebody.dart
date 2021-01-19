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
                padding: const EdgeInsets.only(top:8.0, bottom:12),
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrganicCrop()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 8.0,right:8.0,left:14.0),
                    child: Container(
                      color: Colors.blueGrey[50],
                      height: 182,
                      child: Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Column(
                          children: [
                            Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.all(10.0),
                            width: 182,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/o.jpg'),
                              ),
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Organic \nCrops',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraditionalCrop()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      color: Colors.blueGrey[50],
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: Column(
                          children: [
                            Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.all(10.0),
                            width: 184,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/t.jpg'),
                              ),
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Traditional \nCrops',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
              height: 500,
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
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
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
                  image: "assets/images/cot.jpg",
                  press: () {
                  },
                  page: Cotton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}