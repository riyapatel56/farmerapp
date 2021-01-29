

import 'package:farmer/farmvisit/listoffarmerjoinedcrop/cardlistfarmer.dart';
import 'package:farmer/farmvisit/listoffarmerjoinedcrop/kiran.dart';
import 'package:farmer/farmvisit/listoffarmerjoinedcrop/mitesh.dart';
import 'package:farmer/farmvisit/listoffarmerjoinedcrop/umeshs.dart';
import 'package:flutter/material.dart';

class FarmVisitList extends StatefulWidget {
  @override
  _FarmVisitListState createState() => _FarmVisitListState();
}

class _FarmVisitListState extends State<FarmVisitList> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom : 0.058 * MediaQuery.of(context).size.height,),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: 0.00275 * MediaQuery.of(context).size.height,
                children: [
                  FarmVisitListCard(
                    image: 'assets/images/p2.jpg',
                    name: 'Umesh Shah',
                    producing: 'Wheat',
                    since: '2012',
                    address: 'Jaipur, Rajasthan',
                    page: Umeshs(),
                  ),
                  FarmVisitListCard(
                    image: 'assets/images/p2.jpg',
                    name: 'Kiran Shah',
                    producing: 'Apple',
                    since: '2015',
                    address: 'Amritsar, Punjab',
                    page: Kiran(),
                  ),
                  FarmVisitListCard(
                    image: 'assets/images/p2.jpg',
                    name: 'Mitesh Shah',
                    producing: 'Coffee',
                    since: '2004',
                    address: 'Kerela',
                    page: Mitesh(),
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