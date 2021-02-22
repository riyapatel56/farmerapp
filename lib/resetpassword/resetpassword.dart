import 'package:farmer/forgotpassword/forgotpassword.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Reset Password',
            style: GoogleFonts.openSans(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
          ),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                right: 32,
                top: 18,
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Current Password',
                  contentPadding: EdgeInsets.only(left:46),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                right: 32,
                top: 18,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 12.5),
                    child: Icon(Icons.lock,size: 29,),
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                right: 32,
                top: 18,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Re-Enter New Password',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 12.5),
                    child: Icon(Icons.lock,size: 29,),
                  ),
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.only(
                  left: 0.026 * MediaQuery.of(context).size.height,
                  top: 0.004 * MediaQuery.of(context).size.height,
                  right: 0.026 * MediaQuery.of(context).size.height),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ForgotPassword()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      height: 0.036 * MediaQuery.of(context).size.height,
                      //color: Colors.green[50],
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          ' Forgot Password? ',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            letterSpacing: .8,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                      'Reset',
                      style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
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
}
