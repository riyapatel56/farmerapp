import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:pinput/pin_put/pin_put_state.dart';

class Verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Verification',
            style: GoogleFonts.openSans(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
              
            ),
          ),
        ),
        elevation: 0.5,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/fgp2.png'),

            

            Padding(
                padding: const EdgeInsets.only(top: 1.0,right: 90,left: 90),
                child: Center(
                  child: PinPut(
                    followingFieldDecoration: BoxDecoration(color: Colors.white,border: Border.all()),
                    selectedFieldDecoration: BoxDecoration(color: Colors.white,border: Border.all()),
                    submittedFieldDecoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.green[800])),
                    fieldsCount: 4,
                    onSubmit: (String pin) => _showSnackBar(pin, context),
                  ),
                ),
              ),
              Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                'Enter the verification code\nwe just sent you on your phone number',
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text(
                      'If you didn\'t recieve a code!',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.0,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 7.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Text(
                          'Resend',
                          style: GoogleFonts.openSans(
                            color: Colors.green[800],
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 21.0,left: 105,right: 105),
                child: Container(
                  height: 0.059 * MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.green[800],
                  ),
                  child: Center(
                    child: Text(
                      'Verify',
                      style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      fontSize: 21,
                    ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
   void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: Duration(seconds: 5),
      content: Container(
          height: 80.0,
          child: Center(
            child: Text(
              'Pin Submitted. Value: $pin',
              style: TextStyle(fontSize: 25.0),
            ),
          )),
      backgroundColor: Colors.greenAccent,
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
