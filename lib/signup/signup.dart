
import 'package:farmer/signup/farmersignup.dart';
import 'package:farmer/signup/tradersignup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(
              "assets/images/msign.jpg",
              height: 1000,
              fit: BoxFit.cover,
              color: Colors.black12,
              colorBlendMode: BlendMode.darken,
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:380.0),
                  child: Container(
                    height: 100,
                    width: 180,
                    alignment: Alignment.center,
                    child: Text(
                      'Sign Up ',
                      style: GoogleFonts.roboto(fontSize: 40,color: Colors.green[800]),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    height: 50,
                    width: 280,
                    child: RaisedButton(
                      elevation: 2,
                      child: Text('Sign Up As Farmer',style: GoogleFonts.roboto(fontWeight: FontWeight.w400,color: Colors.green[800],fontSize: 23),),
                      color: Colors.white,
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerSignup()));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: 50,
                    width: 280,
                    child: RaisedButton(
                      elevation: 2,
                      child: Text('Sign Up As Trader',style: GoogleFonts.roboto(fontWeight: FontWeight.w400,color: Colors.green[800],fontSize: 23),),
                      color: Colors.white,
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderSignup()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}