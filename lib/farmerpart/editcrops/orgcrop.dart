import 'package:farmer/farmerpart/editcrops/cropcard.dart';
import 'package:farmer/farmerpart/organiccrops/almond.dart';
import 'package:farmer/farmerpart/organiccrops/coffee.dart';
import 'package:farmer/farmerpart/organiccrops/cotton.dart';
import 'package:flutter/material.dart';

class OrganicCrop extends StatefulWidget {
  @override
  _OrganicCropState createState() => _OrganicCropState();
}

class _OrganicCropState extends State<OrganicCrop> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organic Crops'),
        backgroundColor: Colors.green,
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
                    image: "assets/images/cotton.jpg",
                    press: () {
                    },
                    page: Cotton(),
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