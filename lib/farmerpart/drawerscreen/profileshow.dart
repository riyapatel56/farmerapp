import 'package:farmer/farmerpart/drawerscreen/profileedit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('Profile'),
      ),
      body: ListView(
        children: [
          Container(
            //height: 0.955 * MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 0.300 * MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/p1.jpg'),fit: BoxFit.fill)
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(left: 14,right: 18,bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Information',
                        style: GoogleFonts.openSans(fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      height: MediaQuery.of(context).size.height * 0.01,
                      color: Colors.grey,
                    ),
                  ),

                  
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 12),
                    child: Text(
                      'Name',
                      style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,left: 12),
                    child: Text(
                      'Mitesh Shah',
                      style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      height: MediaQuery.of(context).size.height * 0.01,
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 12),
                    child: Text(
                      'Mobile Number',
                      style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,left: 12),
                    child: Text(
                      '1234567890',
                      style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      height: MediaQuery.of(context).size.height * 0.01,
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 12),
                    child: Text(
                      'Mail ID',
                      style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,left: 12),
                    child: Text(
                      'xyz@gmail.com',
                      style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      height: MediaQuery.of(context).size.height * 0.01,
                      color: Colors.grey,
                    ),
                  ),

                  

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 12),
                    child: Text(
                      'Acres of Land ',
                      style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,left: 12),
                    child: Text(
                      '7',
                      style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      height: MediaQuery.of(context).size.height * 0.01,
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 12),
                    child: Text(
                      'Growing',
                      style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,left: 12),
                    child: Text(
                      'Wheat, Apple, Maize',
                      style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      height: MediaQuery.of(context).size.height * 0.01,
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 12),
                    child: Text(
                      'From',
                      style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,left: 12),
                    child: Text(
                      'Jaipur, Rajasthan',
                      style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      height: MediaQuery.of(context).size.height * 0.01,
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 12),
                    child: Text(
                      'Total No Of Workers',
                      style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,left: 12),
                    child: Text(
                      '4',
                      style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      height: MediaQuery.of(context).size.height * 0.01,
                      color: Colors.grey,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 12),
                    child: Text(
                      'Income Per Year',
                      style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0,left: 12),
                    child: Text(
                      '1,00,000',
                      style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      height: MediaQuery.of(context).size.height * 0.01,
                      color: Colors.grey,
                    ),
                  ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        backgroundColor: Colors.green[800],
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileEdit()));
        },
      ),
    );
  }
}