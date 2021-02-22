import 'package:farmer/abccentermain/addfarmers/addfarmersform.dart';
import 'package:farmer/abccentermain/buycroprequest/abchome.dart';
import 'package:farmer/abccentermain/farmermembers/homefarmermembers.dart';
import 'package:farmer/abccentermain/tradermembers/hometradermembers.dart';
import 'package:flutter/material.dart';
import 'package:farmer/abccentermain/farmersrequest/frhome.dart';
import 'package:farmer/abccentermain/loaninsurance/lihome.dart';
import 'package:farmer/abccentermain/partnershipfarming/pfhome.dart';
import 'package:farmer/abccentermain/sellcroprequest/aschome.dart';
import 'package:farmer/abccentermain/transportation/transhome.dart';
import 'package:farmer/abccentermain/trdrequest/trdhome.dart';
import 'package:google_fonts/google_fonts.dart';



class NewRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        blurRadius: 4,
                        color: Colors.orange[900]
                      )]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          //1 row
                  Row(
                      children: [
                        //sell
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Colors.grey[400]),
                                bottom: BorderSide(color: Colors.grey[400]),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ASCHome()));
                              },
                              child: Column(
                                children: [
                                  Text('18',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
                                  Text('Sell Crops',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),),
                                  //SizedBox(width: 4,)
                                ],
                              ),
                            ),
                          ),
                        ),
                        //buy
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Colors.grey[400]),
                                bottom: BorderSide(color: Colors.grey[400]),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AbBCHome()));
                              },
                              child: Column(
                                children: [
                                  Text('13',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
                                  Text('Buy Crops',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),),
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
                                //right: BorderSide(color: Colors.grey[400]),
                                bottom: BorderSide(color: Colors.grey[400]),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PFHome()));
                              },
                              child: Column(
                                children: [
                                  Text('7',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
                                  Text('Partnership Farming',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                  ),

                  //2 row
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          //loan/insu
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Colors.grey[400]),
                                bottom: BorderSide(color: Colors.grey[400]),
                              ),
                            ),
                              child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => LIHome()));
                              },
                                child: Column(
                                  children: [
                                    Text('5',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
                                    Text('Loan / Insurance',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //transport
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Colors.grey[400]),
                                bottom: BorderSide(color: Colors.grey[400]),
                              ),
                            ),
                              child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransHome()));
                              },
                                child: Column(
                                  children: [
                                    Text('19',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
                                    Text('Transportation',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),),
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
                                //right: BorderSide(color: Colors.grey[400]),
                                bottom: BorderSide(color: Colors.grey[400]),
                              ),
                            ),
                              child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrdRHome()));
                              },
                                child: Column(
                                  children: [
                                    Text('17',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
                                    Text('Trader Request',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                  ),

                  //3 row
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          //sell
                          Expanded(
                            child: Container(
                              
                              child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FRHome()));
                              },
                                child: Column(
                                  children: [
                                    VerticalDivider(color: Colors.grey[400],thickness: 4,),
                                    Text('5',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1.2),),
                                    Text('Farmers Request',style: GoogleFonts.poppins(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500,letterSpacing: .5),),
                                    VerticalDivider(color: Colors.grey[400],thickness: 4,),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),



                ],
              ),
            ),
          ),
            ],
          ),
            ),

            //add farmer 
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Colors.lightGreen[400],
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Add Farmer',
                        style: GoogleFonts.poppins(color: Color.fromRGBO(0,0,87,1),fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Color.fromRGBO(0,0,87,1),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddFarmerForm()));
                          },
                          child: Text('Add',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //sell crop
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For \n Sell Crops',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ASCHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //buy crop
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For\n Buy Crops',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => AbBCHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //partnership
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For \nPartnership \nFarming',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PFHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Cash Loan
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For \nLoan /\nInsurance',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LIHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //2
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request For \nTransportation',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.07,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //List of Buyer Joined ABC
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request Of \nTraders',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.12,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrdRHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //List of Farmer Joined ABC
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10,),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Request Of \nFarmers',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.12,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FRHome()));
                          },
                          child: Text('Open'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Trader Members
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10,),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Trader\nMembers',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.12,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderMemberHome()));
                          },
                          child: Text('View'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //farmer members
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10,right: 10,bottom:15),
              child: Container(
                color: Color.fromRGBO(0,0,87,1),
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                      child: Text(
                        'Farmer \nMembers',
                        style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1.2),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.010,bottom: MediaQuery.of(context).size.height * 0.010,left: MediaQuery.of(context).size.height * 0.12,right: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.lightGreen[400],
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerMemberHome()));
                          },
                          child: Text('View'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      );
          
          

                  //soiltesting
                

         
  }
}