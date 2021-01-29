import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Kiran extends StatefulWidget {
  @override
  _KiranState createState() => _KiranState();
}

class _KiranState extends State<Kiran> {
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: globalKey,
      appBar: AppBar(
        title: Text('Kiran Patel'),
        backgroundColor: Colors.green[800],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 0.25 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green[900],width: 4),
                  color: Colors.green[900],
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/p2.jpg',),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,right: 18,left: 18),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey[600],
                    offset: Offset(0,0.60),
                  )],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 140),
                      child: Text(
                        'Details',
                        style: GoogleFonts.openSans(fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 12),
                      child: Text(
                        'Name',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        'Kiran Patel',
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 12),
                      child: Text(
                        'Mobile Number',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        '1234567890',
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 12),
                      child: Text(
                        'Mail ID',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        'xyz@gmail.com',
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 12),
                      child: Text(
                        'Growing',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        'Wheat, Apple, Maize',
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 12),
                      child: Text(
                        'From',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        'Jaipur, Rajasthan',
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 12),
                      child: Text(
                        'Acres of Land ',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        '75',
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton(
                color: Colors.green[800],
                child: Text('Contact Now',style: TextStyle(color: Colors.white,fontSize: 18),),
                onPressed: (){
                  final snackBar = SnackBar(content: Text('Contacting'));
                 globalKey.currentState.showSnackBar(snackBar);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}