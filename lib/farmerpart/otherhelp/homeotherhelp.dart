import 'package:farmer/farmerpart/otherhelp/loan/loanhome.dart';
import 'package:farmer/farmerpart/otherhelp/transportation/transhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


//loan, insurance, soiltesting, request for transportation
class OtherHelpHome extends StatefulWidget {
  @override
  _OtherHelpHomeState createState() => _OtherHelpHomeState();
}

class _OtherHelpHomeState extends State<OtherHelpHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Other Help',
          style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: Colors.green[800],
        elevation: 0,
      ),
      backgroundColor: Colors.lightGreen[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            //height: MediaQuery.of(context).size.height * 1.5,
            color: Colors.white,
            
            child: Column(
              children: [

                //loan
                Container(
                  color: Color.fromRGBO(0,0,87,1),
                  height: MediaQuery.of(context).size.height * 0.21,
                  width: double.infinity,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                        child: Text(
                          'Get Easy Loans For Your Farm',
                          style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.120,
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
                        top: MediaQuery.of(context).size.height * 0.120,
                        left: MediaQuery.of(context).size.height * 0.160,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                          height: MediaQuery.of(context).size.height * 0.17,
                          child: Image.asset('assets/images/loan.gif')
                        ),
                      ),
                    ],
                  ),
                ),

                //insurance
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.13,left: MediaQuery.of(context).size.height * 0.1),
                  child: Container(
                    color: Color.fromRGBO(0,0,87,1),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025,left: MediaQuery.of(context).size.height * 0.13,right: MediaQuery.of(context).size.height * 0.014),
                          child: Text(
                            'Protect Your Farm By Taking Insurance',
                            style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.180,
                          left: MediaQuery.of(context).size.height * 0.13,
                          child: FlatButton(
                            color: Colors.lightGreen[400],
                            onPressed: () { 
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoanHome()));
                          },
                            child: Text('Let\'s Go'),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.02,
                          right: MediaQuery.of(context).size.height * 0.230,
                          child: Container(
                            decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                            height: MediaQuery.of(context).size.height * 0.21,
                            child: Image.asset('assets/images/insurance.gif')
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //soiltesting
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05,right: MediaQuery.of(context).size.height * 0.1),
                  child: Container(
                    color: Color.fromRGBO(0,0,87,1),
                    height: MediaQuery.of(context).size.height * 0.21,
                    width: double.infinity,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.1),
                          child: Text(
                            'Soil \nTesting',
                            style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.120,
                          right: MediaQuery.of(context).size.height * 0.22,
                          child: FlatButton(
                            color: Colors.lightGreen[400],
                            onPressed: () { 
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoanHome()));
                            },
                            child: Text('Let\'s Go'),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.014,
                          left: MediaQuery.of(context).size.height * 0.240,
                          child: Container(
                            decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 4,color: Colors.grey)]),
                            height: MediaQuery.of(context).size.height * 0.18,
                            width: MediaQuery.of(context).size.height * 0.15,
                            child: Image.asset('assets/images/soiltesting.jpg',fit: BoxFit.fill,)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //request for transportation
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.14,),
                  child: Container(
                    color: Color.fromRGBO(0,0,87,1),
                    height: MediaQuery.of(context).size.height * 0.21,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      overflow: Overflow.visible,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Get your goods transported',
                              style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.145,
                          left: MediaQuery.of(context).size.height * 0.28,
                          child: FlatButton(
                            color: Colors.lightGreen[400],
                            onPressed: () { 
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransHome()));
                            },
                            child: Text('Let\'s Go'),
                          ),
                        ),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.120,
                          right: MediaQuery.of(context).size.height * 0.160,
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

              ],
            ),

          ),
        ),
      ),
    );
  }
}