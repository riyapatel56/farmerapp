import 'package:farmer/customer/corganiccrop/ccotton.dart';
import 'package:farmer/farmerpart/editcrops/cropcard.dart';
import 'package:farmer/farmerpart/organiccrops/almond.dart';
import 'package:farmer/farmerpart/organiccrops/coffee.dart';
import 'package:flutter/material.dart';

class OrganicCrops extends StatefulWidget {
  @override
  _OrganicCropsState createState() => _OrganicCropsState();
}

class _OrganicCropsState extends State<OrganicCrops> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organic Crops'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
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
                    title: 'Cotton',
                    image: "assets/images/cot.jpg",
                    press: () {
                    },
                    page: CCotton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}