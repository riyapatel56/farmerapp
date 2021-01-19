
import 'package:farmer/farmerpart/listoffarmerjoinedcrop/listfarmerhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CropForm extends StatefulWidget {
  @override
  _CropFormState createState() => _CropFormState();
}

class _CropFormState extends State<CropForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      resizeToAvoidBottomInset: false,

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(' Add Details ',style: GoogleFonts.openSans(fontSize: 35,backgroundColor: Colors.blueGrey[50],fontWeight: FontWeight.w600,color: Colors.green[800]),)
                ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      height: 450.0,
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
                            hintText: "How much land you have",
                            hintStyle: GoogleFonts.roboto(fontSize: 17),
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
                              hintText: "Money required to grow crops",
                              hintStyle: GoogleFonts.roboto(fontSize: 17),
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
                              hintText: "Estimated production per year",
                              hintStyle: GoogleFonts.roboto(fontSize: 17),
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
                              hintText: "Phone Number",
                              hintStyle: GoogleFonts.roboto(fontSize: 17),
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
                              hintText: 'Crops grown by you',
                              hintStyle: GoogleFonts.roboto(fontSize: 17),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),

                          
                          Padding(
                            padding: const EdgeInsets.only(top:15.0),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerList()));
                              },
                              minWidth: 250.0,
                              splashColor: Colors.brown[200],
                              color: Colors.green[800],
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              child: Text(
                                "Submit",
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          ),
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