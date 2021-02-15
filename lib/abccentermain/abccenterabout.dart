import 'package:farmer/abccentermain/ABCProfile/abcprofile.dart';
import 'package:farmer/abccentermain/applyabcfpoform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//abc fpo
class CenterAboutInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'About ',
          style: GoogleFonts.openSans(color: Colors.orange[900],fontWeight: FontWeight.w600,letterSpacing: 1.4),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('ABC Center About'),
            Text('FPO About'),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 148.0),
                child: FlatButton(
                  color: Colors.orange[100],
                  onPressed: () {  
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApplyForm()));
                  },
                  child: Text(
                    'Create ABC',
                    style: GoogleFonts.openSans(fontSize: 22,color: Colors.orange[900],fontWeight: FontWeight.w600,letterSpacing: 1.4),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: FlatButton(
                  color: Colors.orange[100],
                  onPressed: () {  
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApplyForm()));
                  },
                  child: Text(
                    'Create FPO',
                    style: GoogleFonts.openSans(fontSize: 22,color: Colors.orange[900],fontWeight: FontWeight.w600,letterSpacing: 1.4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}