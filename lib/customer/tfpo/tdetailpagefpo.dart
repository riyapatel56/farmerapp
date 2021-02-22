
import 'package:farmer/customer/tfpo/tfpo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Tfpoformapply/tfpoform.dart';
import 'listoftradersforfpo/hometraderfpo.dart';


class TFPODetailPage extends StatefulWidget {

  static const routeName = '/tfpo-detail';

  @override
  _TFPODetailPageState createState() => _TFPODetailPageState();
}

class _TFPODetailPageState extends State<TFPODetailPage> {
  

  @override
  Widget build(BuildContext context) {

    final tfpoId = ModalRoute.of(context).settings.arguments as String;
    final loadedTfpo = Provider.of<Tfpos>(context).findbyId(tfpoId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        title: Text(loadedTfpo.location,style: GoogleFonts.openSans(),),
        /*actions: [
          Padding(
            padding: const EdgeInsets.only(top:0.0,right: 25),
            child: Row(
              children: [
                Icon(Icons.star,size: 18,),
                SizedBox(width: 4,),
                Text(loadedScbuyer.rating, style: GoogleFonts.openSans(color: Colors.white),),
              ],
            ),
          )
        ],*/
      ),
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * -0.090,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.180,
                        width: MediaQuery.of(context).size.height * 0.500,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.blue[800]),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(loadedTfpo.img),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 1.200,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.018),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        loadedTfpo.bio,
                        style: GoogleFonts.openSans(color: Colors.black87,fontSize: MediaQuery.of(context).size.height * 0.02,letterSpacing: 1.0),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blue[50],
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'About',
                            style: GoogleFonts.openSans(fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 1,color: Colors.blue[900]),
                            textAlign: TextAlign.center,
                          ),
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
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Owner',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedTfpo.pname,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
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
                        'Center Code',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedTfpo.centercode,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
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
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedTfpo.phone,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
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
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedTfpo.mail,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
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
                        'Address',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedTfpo.address,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
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
                        'Open Since',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedTfpo.since,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
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

                    /*Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 12),
                      child: Text(
                        'From',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedScbuyer.place,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),*/

                    /*Padding(
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
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0,left: 12),
                      child: Text(
                        loadedScbuyer.landAcre,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),*/

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 8, right: 8, bottom: 18),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                            blurRadius: 2,
                            color: Colors.blue,
                          )]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'See List Of Trader Members',
                                style: GoogleFonts.openSans(fontSize: 18),
                              ),
                              SizedBox(width: 5,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FlatButton(
                                  color: Colors.blue[900],
                                  onPressed: () {  
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderJFPO()));
                                  },
                                  child: Text(
                                    'View',
                                    style: GoogleFonts.openSans(fontSize: 16,color: Colors.white),
                                  ),
                                ),
                              ),
                              Text(
                                'OR',
                                style: GoogleFonts.openSans(fontSize: 18),
                              ),
                              SizedBox(width: 5,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FlatButton(
                                  color: Colors.blue[900],
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TFPOApplyForm()));
                                  },
                                  child: Text(
                                    'Apply For Membership',
                                    style: GoogleFonts.openSans(fontSize: 16,color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
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
      ),
      
    );
  }
}


