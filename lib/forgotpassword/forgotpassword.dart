import 'package:farmer/forgotpassword/verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Forgot Password?',
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
            Image.asset('assets/images/fgp1.jpg'),

            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                'Enter the phone number \nassociated with your account',
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                'We will sent you OTP to reset \nyour password',
                style: GoogleFonts.openSans(
                  color: Colors.black26,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 32.0,right: 32, top: 18,),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 12.5),
                    child: Text('+91',style: TextStyle(fontSize: 16),),
                  ),
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 29.0,left: 105,right: 105),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Verification()));
                  },
                  child: Container(
                    height: 0.059 * MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green[800],
                    ),
                    child: Center(
                      child: Text(
                        'Send',
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
            ),

          ],
        ),
      ),
    );
  }
}