import 'package:farmer/customer/chome.dart';
import 'package:farmer/farmerpart/home.dart';
import 'package:farmer/signup/farmersignup.dart';
import 'package:farmer/signup/tradersignup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), 
            topRight: Radius.circular(20),                                       
          ),
        ),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        builder: (builder) {
          return SingleChildScrollView(
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
                        padding: const EdgeInsets.only(top: 30.0, left: 76, right: 74,),
                          child: Container(
                            alignment: Alignment.center,
                            height: 24,
                            width: double.infinity,
                              child: Text(
                                'Are you Farmer or Trader?', 
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 1.24,
                                ),
                              ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 26, left: 26, right: 26,),
                          child: FlatButton(
                            color: Colors.green[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 41,
                            minWidth: double.infinity,
                            child: Text(
                              'Farmer',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color.fromRGBO(255,255,255,1),
                              ),
                            ),
                            onPressed: showModalSheetF,
                          ),
                        ),

                                    

//flatbutton
                        Padding(
                          padding: EdgeInsets.only(top: 7, left: 26, right: 26,bottom: 14),
                          child: FlatButton(
                            color: Colors.green[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 41,
                            minWidth: double.infinity,
                            child: Text(
                              'Trader',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color.fromRGBO(255,255,255,1),
                              ),
                            ),
                            onPressed: showModalsSheetT,
                          ),
                        ),

 //bottom text
                            
                          ],
                        ),
                ),
              ),
                
             
              ],
            ),
          );
        });
    });
  }

  @override
  void showModalSheetF (){
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), 
          topRight: Radius.circular(20),                                       
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
                        padding: const EdgeInsets.only(top: 30.0, left: 76, right: 74,),
                          child: Container(
                            alignment: Alignment.center,
                            height: 24,
                            width: double.infinity,
                              child: Text(
                                'Farmer Login', 
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 1.24,
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
                            padding: EdgeInsets.only(top: 24, left: 26,right:25,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 46.0,
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

                        Focus(
                          onFocusChange: (hasFocus) {
                            setState(() {
                              //isTextFiledFocus = hasFocus;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 10, left: 26,right:25,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 46.0,
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
                                  contentPadding: EdgeInsets.only(bottom: 3, top: 11.35, right: 17,left:20),
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
                                    

//flatbutton
                        Padding(
                          padding: EdgeInsets.only(top: 16, left: 26, right: 26,),
                          child: FlatButton(
                            color: Colors.green[700],//: Color.fromRGBO(158,158,158,1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 41,
                            minWidth: double.infinity,
                            child: Text(
                              'Submit',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color.fromRGBO(255,255,255,1),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerHome()));
                            },
                          ),
                        ),


                         //bottom text
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10.0,left: 26,bottom: 15),
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
                               padding: const EdgeInsets.only(top: 10.0,bottom: 15,left: 12),
                               child: Container(
                                 height: 25,
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
  void showModalsSheetT (){
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), 
          topRight: Radius.circular(20),                                       
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

                      //images scroller
                        //Imagesc(),
                             
                      //text
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 76, right: 74,),
                          child: Container(
                            alignment: Alignment.center,
                            height: 24,
                            width: double.infinity,
                              child: Text(
                                'Trader Login', 
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(0,0,0,1),
                                  letterSpacing: 2.24,
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
                            padding: EdgeInsets.only(top: 24, left: 26,right:25,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 46.0,
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
                            padding: EdgeInsets.only(top: 12, left: 26,right:25,),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 46.0,
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
                                    

//flatbutton
                        Padding(
                          padding: EdgeInsets.only(top: 16, left: 26, right: 26,),
                          child: FlatButton(
                            color: Colors.cyan[800],//: Color.fromRGBO(158,158,158,1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 41,
                            minWidth: double.infinity,
                            child: Text(
                              'Submit',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color.fromRGBO(255,255,255,1),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Thome()));
                            },
                          ),
                        ),

                        //bottom text
                        Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10.0,left: 26,bottom: 15),
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
                               padding: const EdgeInsets.only(top: 10.0,bottom: 15,left: 12),
                               child: Container(
                                 height: 25,
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
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(
              "assets/images/loginback.jpg",
              height: 1000,
              fit: BoxFit.cover,
              color: Colors.black12,
              colorBlendMode: BlendMode.darken,
              ),
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