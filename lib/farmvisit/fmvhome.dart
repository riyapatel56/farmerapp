
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'farmvisitProfile/fvprofile.dart';
import 'listoffarmerjoinedcrop/fmmain.dart';

class FarmVisitHome extends StatefulWidget {
  @override
  _FarmVisitHomeState createState() => _FarmVisitHomeState();
}

class _FarmVisitHomeState extends State<FarmVisitHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text('Farm Visit',
          style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              icon: Icon(Icons.person_add,size: 35,color: Colors.white,), 
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FVProfile()));
              },
            ),
          ),
        ],
      ),
      body: FvFarmerHome(),
    );
  }
}