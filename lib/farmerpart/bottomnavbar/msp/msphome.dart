import 'package:farmer/farmerpart/bottomnavbar/msp/organicmsp/homeorgcrop.dart';
import 'package:farmer/farmerpart/bottomnavbar/msp/trdmsp/hometrdcrop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'allmspcrop/homeallmspcrop.dart';

class MSPHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[900],
        title: FittedBox(
          fit: BoxFit.contain,
          child: Text('Minimum Selling Price Of Crops',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //organic 
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrgMCropsHome()));
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0,top: 15,right: 8,left: 8),
                child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0), bottomLeft: Radius.circular(60.0)),
                    color: Color.fromRGBO(0,0,87,1),
                  ),
                  child: Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 20,bottom: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/o.jpg'),
                          ),
                        ),
                        height: 110,
                        width: 90,
                        
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      'Organic \nCrops',
                      style: GoogleFonts.openSans(
                        color: Colors.lightGreen,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontSize: 24
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            ),

            //traditional
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrdMCropsHome()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(60.0), topRight: Radius.circular(60.0)),
                    color: Colors.lightGreen[500],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 00.0),
                      child: Container(
                        child: Text(
                          'Traditional \nCrops',
                          textAlign: TextAlign.end,
                          style: GoogleFonts.openSans(
                            color: Color.fromRGBO(0,0,87,1),
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            fontSize: 24
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),

                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, right: 20,bottom: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          //border: Border.all(color: Color.fromRGBO(0,0,87,1),width: 4),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/t.jpg'),
                          ),
                        ),
                        height: 110,
                        width: 90,
                        
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            ),

            Container(child: MSPAllCropsHome()),

          ],
        ),
      ),
    );
  }
}