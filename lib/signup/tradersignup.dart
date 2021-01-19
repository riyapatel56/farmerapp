
import 'package:farmer/customer/chome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TraderSignup extends StatefulWidget {
  @override
  _TraderSignupState createState() => _TraderSignupState();
}

class _TraderSignupState extends State<TraderSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
            Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(
              "assets/images/csign.jpg",
              height: 1000,
              fit: BoxFit.cover,
              color: Colors.black12,
              colorBlendMode: BlendMode.darken,
              ),
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(' Trader Sign Up ',style: GoogleFonts.openSans(fontSize: 35,backgroundColor: Colors.blueGrey[50],fontWeight: FontWeight.w600,color: Colors.brown),)
                ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      height: 700.0,
                      width: 380.0,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 25.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 0.0,),
                            child: TextField(
                            autocorrect: false,
                            autofocus: false,
                            style: TextStyle(
                              fontSize: 20.0,
                              ),
                          decoration: InputDecoration(
                            hintText: "Enter Name",
                            hintStyle: GoogleFonts.roboto(),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[200],
                            contentPadding: EdgeInsets.all(15.0),
                          ),
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                              decoration: InputDecoration(
                              hintText: "Enter Phone Number",
                              hintStyle: GoogleFonts.roboto(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0,),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                              decoration: InputDecoration(
                              hintText: "Experience / Joining Date",
                              hintStyle: GoogleFonts.roboto(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0,),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                              decoration: InputDecoration(
                              hintText: "Enter Village",
                              hintStyle: GoogleFonts.roboto(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0,),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                              decoration: InputDecoration(
                              hintText: "Enter District",
                              hintStyle: GoogleFonts.roboto(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0,),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                              decoration: InputDecoration(
                              hintText: "Enter State",
                              hintStyle: GoogleFonts.roboto(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0,),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                              decoration: InputDecoration(
                              hintText: "Enter Pincode",
                              hintStyle: GoogleFonts.roboto(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                              decoration: InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: GoogleFonts.roboto(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0,),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              obscureText: true,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: GoogleFonts.roboto(),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Thome()));
                              },
                              minWidth: 250.0,
                              splashColor: Colors.brown[600],
                              color: Colors.brown[500],
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              child: Text(
                                "SignUp",
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                ),
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ],
            ),
        ],
      ),
      
    );
  }
}