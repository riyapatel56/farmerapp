import 'package:farmer/farmerpart/editcrops/cropcard.dart';
import 'package:farmer/farmerpart/tradcrops/lime.dart';
import 'package:farmer/farmerpart/tradcrops/tomato.dart';
import 'package:farmer/farmerpart/tradcrops/watermelon.dart';
import 'package:flutter/material.dart';

class TraditionalCrop extends StatefulWidget {
  @override
  _TraditionalCropState createState() => _TraditionalCropState();
}

class _TraditionalCropState extends State<TraditionalCrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traditional Crops'),
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
                    title: 'Watermelon',
                    image: "assets/images/wat.jpg",
                    press: () {
                    },
                    page: Watermelon(),
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
