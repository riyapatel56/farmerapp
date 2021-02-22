
import 'package:farmer/customer/tabccentermember/tsellcrop.dart';
import 'package:farmer/customer/tfpo/listoftradersforfpo/hometraderfpo.dart';
import 'package:farmer/farmerpart/drawerscreen/otherhelp/loan/loanhome.dart';
import 'package:farmer/farmerpart/drawerscreen/otherhelp/transportation/transhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'farmmfpo/homefmfpo.dart';

class TFPOMHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan[700],
        title: FittedBox(
          fit: BoxFit.contain,
          child: Text('FPO',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top:8.0,bottom: 14),
              child: Row(
                        children: [
                          //buy
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.grey[400]),
                                  //bottom: BorderSide(color: Colors.grey[400]),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ASCHome()));
                                },
                                child: Column(
                                  children: [
                                    Text('18',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
                                    Text('Buy Crops',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),textAlign: TextAlign.center,),
                                    //SizedBox(width: 4,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //partnership
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.grey[400]),
                                  //bottom: BorderSide(color: Colors.grey[400]),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => PFHome()));
                                },
                                child: Column(
                                  children: [
                                    Text('7',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),textAlign: TextAlign.center,),
                                    Text('Partnership Business',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //transport your crop
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  //right: BorderSide(color: Colors.grey[400]),
                                  //bottom: BorderSide(color: Colors.grey[400]),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => PFHome()));
                                },
                                child: Column(
                                  children: [
                                    Text('7',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),textAlign: TextAlign.center,),
                                    Text('Transport Crop',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                    ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Divider(height: 2,color: Colors.grey,),
            ),

            
            Container(
              color: Colors.blue[900],
              height: MediaQuery.of(context).size.height * 0.21,
              width: double.infinity,
              child: Stack(
                overflow: Overflow.visible,
                children: [

                  //sell Crop
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                    child: Text(
                      'Buy Crop',
                      style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.100,
                    left: MediaQuery.of(context).size.height * 0.02,
                    child: FlatButton(
                      color: Colors.lightGreen[400],
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TSellCrop()));
                      },
                      child: Text('Let\'s Go'),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.020,
                    left: MediaQuery.of(context).size.height * 0.240,
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                      height: MediaQuery.of(context).size.height * 0.17,
                      child: Image.asset('assets/images/sellcrop.gif')
                    ),
                  ),
                ],
              ),
            ),

            //partnership
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                color: Colors.blue[900],
                height: MediaQuery.of(context).size.height * 0.21,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Partnership \nBusiness',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.130,
                      left: MediaQuery.of(context).size.height * 0.02,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoanHome()));
                        },
                        child: Text('Request For Call'),
                      ),
                    ),
                    
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.020,
                      left: MediaQuery.of(context).size.height * 0.240,
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                        height: MediaQuery.of(context).size.height * 0.17,
                        child: Image.asset('assets/images/handshake.gif')
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Cash Loan
            /*Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                color: Colors.blue[900],
                height: MediaQuery.of(context).size.height * 0.21,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Cash Loan /\n Insurance',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.130,
                      left: MediaQuery.of(context).size.height * 0.02,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoanHome()));
                        },
                        child: Text('Let\'s Go'),
                      ),
                    ),
                    
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.020,
                      left: MediaQuery.of(context).size.height * 0.240,
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                        height: MediaQuery.of(context).size.height * 0.17,
                        child: Image.asset('assets/images/loan.gif')
                      ),
                    ),
                  ],
                ),
              ),
            ),*/

            //transportation
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                color: Colors.blue[900],
                height: MediaQuery.of(context).size.height * 0.21,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Transport \nYour Crops',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.130,
                      left: MediaQuery.of(context).size.height * 0.02,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransHome()));
                        },
                        child: Text('Let\'s Go'),
                      ),
                    ),
                    
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.020,
                      left: MediaQuery.of(context).size.height * 0.240,
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                        height: MediaQuery.of(context).size.height * 0.17,
                        child: Image.asset('assets/images/transportation.gif')
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //List of Buyer Joined ABC
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                color: Colors.blue[900],
                height: MediaQuery.of(context).size.height * 0.15,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'List Of \nTrader Members',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.height * 0.32,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderJFPO()));
                        },
                        child: Text('View'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //List of Farmer Joined ABC
            Padding(
              padding: const EdgeInsets.only(top: 28.0,bottom: 20),
              child: Container(
                color: Colors.blue[900],
                height: MediaQuery.of(context).size.height * 0.15,
                width: double.infinity,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.045,bottom: MediaQuery.of(context).size.height * 0.028,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'List Of \nFarmer Members',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.height * 0.32,
                      child: FlatButton(
                        color: Colors.lightGreen[400],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FmFPOHome()));
                        },
                        child: Text('View'),
                      ),
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
