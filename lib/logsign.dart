import 'package:farmer/abccentermain/abccenterabout.dart';
import 'package:farmer/customer/chome.dart';
import 'package:farmer/farmerpart/home.dart';
import 'package:farmer/farmvisit/fmvhome.dart';
import 'package:farmer/signup/abccentersignup.dart';
import 'package:farmer/signup/farmersignup.dart';
import 'package:farmer/signup/farmvisitsignup.dart';
import 'package:farmer/signup/tradersignup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgotpassword/forgotpassword.dart';



class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {

  TextEditingController _controller = TextEditingController();

  @override
  // ignore: must_call_super
  void initState(){

    Future.delayed(Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
        isDismissible: false,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0.020 * MediaQuery.of(context).size.height,), 
            topRight: Radius.circular(0.020 * MediaQuery.of(context).size.height,),                                       
          ),
        ),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        builder: (builder) {
          return WillPopScope(
            onWillPop: () async => false,
            child: SingleChildScrollView(
              child: Stack(
                overflow: Overflow.visible,
                children: [

                //bottomsheet items
                Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                               
                        //text
                        Padding(
                          padding: EdgeInsets.only(top: 0.030 * MediaQuery.of(context).size.height, left: 0.076 * MediaQuery.of(context).size.height, right: 0.074 * MediaQuery.of(context).size.height,),
                            child: Container(
                              alignment: Alignment.center,
                              height: 0.035 * MediaQuery.of(context).size.height,
                              width: double.infinity,
                                child: Text(
                                  'Login As', 
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0,0,0,1),
                                    letterSpacing: 0.00124 * MediaQuery.of(context).size.height,
                                  ),
                                ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 0.015 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                            child: FlatButton(
                              color: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                              ),
                              height: 0.045 * MediaQuery.of(context).size.height,
                              minWidth: double.infinity,
                              child: Text(
                                'Farmer',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  letterSpacing: 1.1,
                                  color: Color.fromRGBO(255,255,255,1),
                                ),
                              ),
                              onPressed: showModalSheetF,
                            ),
                          ),

                          //trader
                          Padding(
                            padding: EdgeInsets.only(top: 0.0007 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                            child: FlatButton(
                              color: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                              ),
                              height: 0.045 * MediaQuery.of(context).size.height,
                              minWidth: double.infinity,
                              child: Text(
                                'Trader',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  letterSpacing: 1.1,
                                  color: Color.fromRGBO(255,255,255,1),
                                ),
                              ),
                              onPressed: showModalsSheetT,
                            ),
                          ),
                          
                          //ABC Center
                          Padding(
                            padding: EdgeInsets.only(top: 0.0007 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                            child: FlatButton(
                              color: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                              ),
                              height: 0.045 * MediaQuery.of(context).size.height,
                              minWidth: double.infinity,
                              child: Text(
                                'ABC / FPO',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(255,255,255,1),
                                  letterSpacing: 1.1,
                                ),
                              ),
                              onPressed: showModalSheetABC,
                            ),
                          ),

                          //farmvisit
                          Padding(
                            padding: EdgeInsets.only(top: 0.0007 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,bottom: 0.014 * MediaQuery.of(context).size.height),
                            child: FlatButton(
                              color: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                              ),
                              height: 0.045 * MediaQuery.of(context).size.height,
                              minWidth: double.infinity,
                              child: Text(
                                'Farm Visit',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  letterSpacing: 1.1,
                                  color: Color.fromRGBO(255,255,255,1),
                                ),
                              ),
                              onPressed: showModalSheetV,
                            ),
                          ),

                          

 //bottom text
                              
                            ],
                          ),
                  ),
                ),
                  
               
                ],
              ),
            ),
          );
        });
    });
  }
  
  //modalsheet farmer
  @override
  void showModalSheetF (){
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.020 * MediaQuery.of(context).size.height), 
          topRight: Radius.circular(0.020 * MediaQuery.of(context).size.height),                                       
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (builder) { 
        return SingleChildScrollView(
          child: Stack(
              overflow: Overflow.visible,
              children: [

              //Dismiss Button For BottomSheet
              Positioned(
                right: 0.41,
                top: -38.59,
                child: Padding(
                  padding: EdgeInsets.only(right:0.008 * MediaQuery.of(context).size.height,),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 0.029 * MediaQuery.of(context).size.height,
                    width: 0.028 * MediaQuery.of(context).size.height,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromRGBO(255,255,255,1),
                      child: Padding(
                        padding: EdgeInsets.all(0.003 * MediaQuery.of(context).size.height),
                        child: Icon(Icons.close_sharp,color: Color.fromRGBO(0,0,0,1),size: 0.015 * MediaQuery.of(context).size.height,),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Firstpage()));
                      },
                    ),
                  ),
                ),
              ),

              //bottomsheet items
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                             
                      //text
                      Padding(
                        padding: EdgeInsets.only(top: 0.030 * MediaQuery.of(context).size.height, left: 0.076 * MediaQuery.of(context).size.height, right: 0.074 * MediaQuery.of(context).size.height,),
                          child: Container(
                            alignment: Alignment.center,
                            height: 0.055 * MediaQuery.of(context).size.height,
                            width: double.infinity,
                              child: Text(
                                'Farmer Login', 
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 0.00124 * MediaQuery.of(context).size.height,
                                ),
                              ),
                          ),
                        ),

                        //Textfield
                        //phone number add
                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              //isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.018 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height,right:0.025 * MediaQuery.of(context).size.height,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 0.056 * MediaQuery.of(context).size.height,
                                ),
                                child: TextField(
                                textInputAction: TextInputAction.next,
                                maxLines: 1,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: '',
                                  focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Colors.green[800], width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green[800], width: 2.0),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Enter Phone Number/Name',
                                  contentPadding: EdgeInsets.only(bottom: 0.0039* MediaQuery.of(context).size.height, top: 0.01135* MediaQuery.of(context).size.height, right: 0.017* MediaQuery.of(context).size.height,left:0.020* MediaQuery.of(context).size.height),
                                  hintStyle: GoogleFonts.roboto(
                                      fontSize: 18,
                                    color: Color.fromRGBO(146,146,146,1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                ),
                              ),
                          ),
                        ),

                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              //isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.012 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height,right:0.025 * MediaQuery.of(context).size.height,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 0.056 * MediaQuery.of(context).size.height,
                                ),
                                child: TextField(
                                textInputAction: TextInputAction.next,
                                maxLines: 1,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: '',
                                  focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Colors.green[800], width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green[800], width: 2.0),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Enter Password',
                                  contentPadding: EdgeInsets.only(bottom: 0.0039* MediaQuery.of(context).size.height, top: 0.01135* MediaQuery.of(context).size.height, right: 0.017* MediaQuery.of(context).size.height,left:0.020* MediaQuery.of(context).size.height),
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                      fontSize: 18,
                                    color: Color.fromRGBO(146,146,146,1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                ),
                              ),
                          ),
                        ),

                        Padding(
                                     padding: EdgeInsets.only(left: 0.026 * MediaQuery.of(context).size.height,top: 0.001 * MediaQuery.of(context).size.height,right: 0.026 * MediaQuery.of(context).size.height),
                                     child: GestureDetector(
                                       onTap: () {
                                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
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
                                                color: Color.fromRGBO(0,0,0,1),
                                                letterSpacing: .8,
                                            ),),
                                             ),
                                             
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                    

//flatbutton
                        Padding(
                          padding: EdgeInsets.only(left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                          child: FlatButton(
                            color: Colors.green[700],//: Color.fromRGBO(158,158,158,1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                            ),
                            height: 0.048 * MediaQuery.of(context).size.height,
                            minWidth: double.infinity,
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16 ,
                                letterSpacing: 1.2,
                                color: Color.fromRGBO(255,255,255,1),
                                //decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerHome()));
                            },
                          ),
                        ),

                        
                         //bottom text
                         Padding(
                           padding: EdgeInsets.only(bottom: 0.010 * MediaQuery.of(context).size.height,),
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height,left: 0.026 * MediaQuery.of(context).size.height,bottom: 0.015 * MediaQuery.of(context).size.height),
                                 child: Text(
                                   'Don\'t have an account ?',
                                   style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0,0,0,1),
                                      letterSpacing: 0.3,
                                    ),
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height,bottom: 0.015 * MediaQuery.of(context).size.height,left: 0.012 * MediaQuery.of(context).size.height),
                                 child: Container(
                                   decoration: BoxDecoration(border: Border.all(color: Colors.green[800])),
                                   height: 0.035 * MediaQuery.of(context).size.height,
                                   child: FlatButton(
                                     color: Colors.green[50],
                                     child: Text(
                                       'SignUp',
                                      style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0,0,0,1),
                                      letterSpacing: 1.24,
                                    ),),
                                     onPressed: () {
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerSignup()));
                                     },
                                   ),
                                 ),
                               )
                             ],
                           ),
                         ), 
                    ],
                  ),
                ),
              ),
                
             
              ],
            ),
        );
      });
  }
  

  //modalsheet trader
  @override
  void showModalsSheetT (){
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.020 * MediaQuery.of(context).size.height), 
          topRight: Radius.circular(0.020 * MediaQuery.of(context).size.height),                                       
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (builder) { 
        return SingleChildScrollView(
          child: Stack(
              overflow: Overflow.visible,
              children: [

              //Dismiss Button For BottomSheet
              Positioned(
                right: 0.41,
                top: -38.59,
                child: Padding(
                  padding: const EdgeInsets.only(right:8.0,),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 29,
                    width: 28,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromRGBO(255,255,255,1),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(Icons.close_sharp,color: Color.fromRGBO(0,0,0,1),size: 15,),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Firstpage()));
                      },
                    ),
                  ),
                ),
              ),

              //bottomsheet items
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                             
                      //text
                      Padding(
                        padding: EdgeInsets.only(top: 0.030 * MediaQuery.of(context).size.height, left: 0.076 * MediaQuery.of(context).size.height, right: 0.074 * MediaQuery.of(context).size.height,),
                          child: Container(
                            alignment: Alignment.center,
                            height: 0.055 * MediaQuery.of(context).size.height,
                            width: double.infinity,
                              child: Text(
                                'Trader Login', 
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 0.00124 * MediaQuery.of(context).size.height,
                                ),
                              ),
                          ),
                        ),

                        //Textfield
                        //phone number add
                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              //isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.024 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height,right:0.025 * MediaQuery.of(context).size.height,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 0.056 * MediaQuery.of(context).size.height,
                                ),
                                child: TextField(
                                textInputAction: TextInputAction.next,
                                maxLines: 1,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: '',
                                  focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Colors.cyan[800], width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.cyan[800], width: 2.0),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Enter PhoneNumber/Name',
                                  contentPadding: EdgeInsets.only(bottom: 3, top: 11.35, right: 17,left:20),
                                  hintStyle:GoogleFonts.roboto(
                                      fontSize: 16,
                                    color: Color.fromRGBO(146,146,146,1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                ),
                              ),
                          ),
                        ),

                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              //isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.012 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height,right: 0.025 * MediaQuery.of(context).size.height,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 0.056 * MediaQuery.of(context).size.height,
                                ),
                                child: TextField(
                                textInputAction: TextInputAction.next,
                                maxLines: 1,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: '',
                                  focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Colors.cyan[800], width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.cyan[800], width: 2.0),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Enter Password',
                                  contentPadding: EdgeInsets.only(bottom: 3, top: 11.35, right: 17,left:20),
                                  hintStyle: GoogleFonts.roboto(
                                      fontSize: 16,
                                    color: Color.fromRGBO(146,146,146,1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                ),
                              ),
                          ),
                        ),

                        Padding(
                                     padding: EdgeInsets.only(left: 0.026 * MediaQuery.of(context).size.height,top: 0.001 * MediaQuery.of(context).size.height,right: 0.026 * MediaQuery.of(context).size.height),
                                     child: GestureDetector(
                                       onTap: () {
                                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
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
                                                color: Color.fromRGBO(0,0,0,1),
                                                letterSpacing: .8,
                                            ),),
                                             ),
                                             
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                    

//flatbutton
                        Padding(
                          padding: EdgeInsets.only(left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                          child: FlatButton(
                            color: Colors.cyan[800],//: Color.fromRGBO(158,158,158,1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 0.048 * MediaQuery.of(context).size.height,
                            minWidth: double.infinity,
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                letterSpacing: 1.2,
                                color: Color.fromRGBO(255,255,255,1),
                                //decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Thome()));
                            },
                          ),
                        ),

                        //bottom text
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.010 * MediaQuery.of(context).size.height,),
                          child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height,left: 0.026 * MediaQuery.of(context).size.height,bottom: 0.015 * MediaQuery.of(context).size.height),
                                 child: Text(
                                   'Don\'t have an account ?',
                                   style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0,0,0,1),
                                      letterSpacing: 0.3,
                                    ),
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height,bottom: 0.015 * MediaQuery.of(context).size.height,left: 0.012 * MediaQuery.of(context).size.height),
                                 child: Container(
                                   decoration: BoxDecoration(border: Border.all(color: Colors.cyan[800])),
                                   height: 0.035 * MediaQuery.of(context).size.height,
                                   child: FlatButton(
                                     color: Colors.cyan[50],
                                     child: Text(
                                       'SignUp',
                                      style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0,0,0,1),
                                      letterSpacing: 1.24,
                                    ),),
                                     onPressed: () {
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderSignup()));
                                     },
                                   ),
                                 ),
                               )
                             ],
                           ),
                        ), 
                            
                          ],
                        ),
                ),
              ),
                
             
              ],
            ),
        );
      });
  }
  
  //modal sheet farm visit
  @override
  void showModalSheetV (){
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.020 * MediaQuery.of(context).size.height), 
          topRight: Radius.circular(0.020 * MediaQuery.of(context).size.height),                                       
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (builder) { 
        return SingleChildScrollView(
          child: Stack(
              overflow: Overflow.visible,
              children: [

              //Dismiss Button For BottomSheet
              Positioned(
                right: 0.41,
                top: -38.59,
                child: Padding(
                  padding: EdgeInsets.only(right:0.008 * MediaQuery.of(context).size.height,),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 0.029 * MediaQuery.of(context).size.height,
                    width: 0.028 * MediaQuery.of(context).size.height,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromRGBO(255,255,255,1),
                      child: Padding(
                        padding: EdgeInsets.all(0.003 * MediaQuery.of(context).size.height),
                        child: Icon(Icons.close_sharp,color: Color.fromRGBO(0,0,0,1),size: 0.015 * MediaQuery.of(context).size.height,),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Firstpage()));
                      },
                    ),
                  ),
                ),
              ),

              //bottomsheet items
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                             
                      //text
                      Padding(
                        padding: EdgeInsets.only(top: 0.030 * MediaQuery.of(context).size.height, left: 0.076 * MediaQuery.of(context).size.height, right: 0.074 * MediaQuery.of(context).size.height,),
                          child: Container(
                            alignment: Alignment.center,
                            height: 0.055 * MediaQuery.of(context).size.height,
                            width: double.infinity,
                              child: Text(
                                'Farm Visit Login', 
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 0.00124 * MediaQuery.of(context).size.height,
                                ),
                              ),
                          ),
                        ),

                        //Textfield
                        //phone number add
                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              //isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.024 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height,right:0.025 * MediaQuery.of(context).size.height,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 0.056 * MediaQuery.of(context).size.height,
                                ),
                                child: TextField(
                                textInputAction: TextInputAction.next,
                                maxLines: 1,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: '',
                                  focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Colors.redAccent[700], width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.redAccent[700], width: 2.0),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Enter Phone Number/Name',
                                  contentPadding: EdgeInsets.only(bottom: 0.0039* MediaQuery.of(context).size.height, top: 0.01135* MediaQuery.of(context).size.height, right: 0.017* MediaQuery.of(context).size.height,left:0.020* MediaQuery.of(context).size.height),
                                  hintStyle: GoogleFonts.roboto(
                                      fontSize: 16,
                                    color: Color.fromRGBO(146,146,146,1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                ),
                              ),
                          ),
                        ),

                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              //isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height,right:0.025 * MediaQuery.of(context).size.height,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 0.056 * MediaQuery.of(context).size.height,
                                ),
                                child: TextField(
                                textInputAction: TextInputAction.next,
                                maxLines: 1,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: '',
                                  focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Colors.redAccent[700], width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.redAccent[700], width: 2.0),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Enter Password',
                                  contentPadding: EdgeInsets.only(bottom: 0.0039* MediaQuery.of(context).size.height, top: 0.01135* MediaQuery.of(context).size.height, right: 0.017* MediaQuery.of(context).size.height,left:0.020* MediaQuery.of(context).size.height),
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                      fontSize: 16,
                                    color: Color.fromRGBO(146,146,146,1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                ),
                              ),
                          ),
                        ),

                        Padding(
                                     padding: EdgeInsets.only(left: 0.026 * MediaQuery.of(context).size.height,top: 0.001 * MediaQuery.of(context).size.height,right: 0.026 * MediaQuery.of(context).size.height),
                                     child: GestureDetector(
                                       onTap: () {
                                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
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
                                                color: Color.fromRGBO(0,0,0,1),
                                                letterSpacing: .8,
                                            ),),
                                             ),
                                             
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                    

//flatbutton
                        Padding(
                          padding: EdgeInsets.only(left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                          child: FlatButton(
                            color: Colors.redAccent[700],//: Color.fromRGBO(158,158,158,1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                            ),
                            height: 0.048 * MediaQuery.of(context).size.height,
                            minWidth: double.infinity,
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16 ,
                                color: Color.fromRGBO(255,255,255,1),
                                letterSpacing: 1.2
                                //decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmVisitHome()));
                            },
                          ),
                        ),


                         //bottom text
                         Padding(
                           padding: EdgeInsets.only(bottom: 0.010 * MediaQuery.of(context).size.height,),
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height,left: 0.026 * MediaQuery.of(context).size.height,bottom: 0.015 * MediaQuery.of(context).size.height),
                                 child: Text(
                                   'Don\'t have an account ?',
                                   style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0,0,0,1),
                                      letterSpacing: 0.3,
                                    ),
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height,bottom: 0.015 * MediaQuery.of(context).size.height,left: 0.012 * MediaQuery.of(context).size.height),
                                 child: Container(
                                   decoration: BoxDecoration(border: Border.all(color: Colors.redAccent[700])),
                                   height: 0.035 * MediaQuery.of(context).size.height,
                                   child: FlatButton(
                                     color: Colors.red[50],
                                     child: Text(
                                       'SignUp',
                                      style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0,0,0,1),
                                      letterSpacing: 1.24,
                                    ),),
                                     onPressed: () {
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmVisitSignup()));
                                     },
                                   ),
                                 ),
                               )
                             ],
                           ),
                         ), 
                    ],
                  ),
                ),
              ),
                
             
              ],
            ),
        );
      });
  }

  //modalsheet ABC center
  @override
  void showModalSheetABC (){
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.020 * MediaQuery.of(context).size.height), 
          topRight: Radius.circular(0.020 * MediaQuery.of(context).size.height),                                       
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (builder) { 
        return SingleChildScrollView(
          child: Stack(
              overflow: Overflow.visible,
              children: [

              //Dismiss Button For BottomSheet
              Positioned(
                right: 0.41,
                top: -38.59,
                child: Padding(
                  padding: EdgeInsets.only(right:0.008 * MediaQuery.of(context).size.height,),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 0.029 * MediaQuery.of(context).size.height,
                    width: 0.028 * MediaQuery.of(context).size.height,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromRGBO(255,255,255,1),
                      child: Padding(
                        padding: EdgeInsets.all(0.003 * MediaQuery.of(context).size.height),
                        child: Icon(Icons.close_sharp,color: Color.fromRGBO(0,0,0,1),size: 0.015 * MediaQuery.of(context).size.height,),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Firstpage()));
                      },
                    ),
                  ),
                ),
              ),

              //bottomsheet items
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                             
                      //text
                      Padding(
                        padding: EdgeInsets.only(top: 0.030 * MediaQuery.of(context).size.height, left: 0.076 * MediaQuery.of(context).size.height, right: 0.074 * MediaQuery.of(context).size.height,),
                          child: Container(
                            alignment: Alignment.center,
                            height: 0.055 * MediaQuery.of(context).size.height,
                            width: double.infinity,
                              child: Text(
                                'ABC / FPO Login', 
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 0.00124 * MediaQuery.of(context).size.height,
                                ),
                              ),
                          ),
                        ),

                        //Textfield
                        //phone number add
                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              //isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.024 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height,right:0.025 * MediaQuery.of(context).size.height,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 0.056 * MediaQuery.of(context).size.height,
                                ),
                                child: TextField(
                                textInputAction: TextInputAction.next,
                                maxLines: 1,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: '',
                                  focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Colors.orange[800], width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.orange[800], width: 2.0),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Enter Phone Number/Name',
                                  contentPadding: EdgeInsets.only(bottom: 0.0039* MediaQuery.of(context).size.height, top: 0.01135* MediaQuery.of(context).size.height, right: 0.017* MediaQuery.of(context).size.height,left:0.020* MediaQuery.of(context).size.height),
                                  hintStyle: GoogleFonts.roboto(
                                      fontSize: 16,
                                    color: Color.fromRGBO(146,146,146,1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                ),
                              ),
                          ),
                        ),

                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              //isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height, left: 0.026 * MediaQuery.of(context).size.height,right:0.025 * MediaQuery.of(context).size.height,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 0.056 * MediaQuery.of(context).size.height,
                                ),
                                child: TextField(
                                textInputAction: TextInputAction.next,
                                maxLines: 1,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  counterText: '',
                                  focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(color: Colors.orange[800], width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.orange[800], width: 2.0),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Enter Password',
                                  contentPadding: EdgeInsets.only(bottom: 0.0039* MediaQuery.of(context).size.height, top: 0.01135* MediaQuery.of(context).size.height, right: 0.017* MediaQuery.of(context).size.height,left:0.020* MediaQuery.of(context).size.height),
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                      fontSize: 16,
                                    color: Color.fromRGBO(146,146,146,1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                ),
                              ),
                          ),
                        ),

                        Padding(
                                     padding: EdgeInsets.only(left: 0.026 * MediaQuery.of(context).size.height,top: 0.001 * MediaQuery.of(context).size.height,right: 0.026 * MediaQuery.of(context).size.height),
                                     child: GestureDetector(
                                       onTap: () {
                                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
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
                                                color: Color.fromRGBO(0,0,0,1),
                                                letterSpacing: .8,
                                            ),),
                                             ),
                                             
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                    

//flatbutton
                        Padding(
                          padding: EdgeInsets.only(left: 0.026 * MediaQuery.of(context).size.height, right: 0.026 * MediaQuery.of(context).size.height,),
                          child: FlatButton(
                            color: Colors.orange[800],//: Color.fromRGBO(158,158,158,1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.005 * MediaQuery.of(context).size.height),
                            ),
                            height: 0.048 * MediaQuery.of(context).size.height,
                            minWidth: double.infinity,
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16 ,
                                letterSpacing: 1.2,
                                color: Color.fromRGBO(255,255,255,1),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CenterAboutInfo()));
                            },
                          ),
                        ),


                         //bottom text
                         Padding(
                           padding: EdgeInsets.only(bottom: 0.010 * MediaQuery.of(context).size.height,),
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height,left: 0.026 * MediaQuery.of(context).size.height,bottom: 0.015 * MediaQuery.of(context).size.height),
                                 child: Text(
                                   'Don\'t have an account ?',
                                   style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0,0,0,1),
                                      letterSpacing: 0.3,
                                    ),
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 0.010 * MediaQuery.of(context).size.height,bottom: 0.015 * MediaQuery.of(context).size.height,left: 0.012 * MediaQuery.of(context).size.height),
                                 child: Container(
                                   decoration: BoxDecoration(border: Border.all(color: Colors.orange[800])),
                                   height: 0.035 * MediaQuery.of(context).size.height,
                                   child: FlatButton(
                                     color: Colors.orange[50],
                                     child: Text(
                                       'SignUp',
                                      style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0,0,0,1),
                                      letterSpacing: 1.24,
                                    ),),
                                     onPressed: () {
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => ABCCenterSignup()));
                                     },
                                   ),
                                 ),
                               )
                             ],
                           ),
                         ), 
                    ],
                  ),
                ),
              ),
                
             
              ],
            ),
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.lightGreen[50],
        body: Stack(
          children: [
          Image.asset(
            "assets/images/loginback.jpg",
            height: 1.000 * MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            color: Colors.black12,
            colorBlendMode: BlendMode.darken,
            ),
           Column(
             children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .10),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(),
                    child: Text(' Welcome \n To \n Farmsbook ',style: GoogleFonts.openSans(color: Colors.black,backgroundColor: Colors.grey[100],fontSize: 40,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
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