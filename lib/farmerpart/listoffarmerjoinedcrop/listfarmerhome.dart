
import 'package:farmer/farmerpart/listoffarmerjoinedcrop/kiran.dart';
import 'package:farmer/farmerpart/listoffarmerjoinedcrop/mitesh.dart';
import 'package:farmer/farmerpart/listoffarmerjoinedcrop/umeshs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FarmerList extends StatefulWidget {
  @override
  _FarmerListState createState() => _FarmerListState();
}

class _FarmerListState extends State<FarmerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer List',style: GoogleFonts.roboto(),),
        backgroundColor: Colors.green[800],
      ),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 0.2 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top:15.0,),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.rectangle,
                          ),
                          child: Image.asset('assets/images/p2.jpg'),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top:15.0,right: 110,bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Umesh Shah',style: GoogleFonts.roboto(fontSize: 18,color: Colors.black),textAlign: TextAlign.start,),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Text('Producing Wheat ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Text('Since 2012 ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Text('Jaipur, Rajasthan ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Umeshs()));
                      },
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01,top: MediaQuery.of(context).size.height * 0.01),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.045,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                boxShadow: [BoxShadow(
                                  blurRadius: 2,
                                  offset: Offset(0,0.6)
                                )],
                              ),
                              child: FlatButton(
                                child: Text('Call',style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.045,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                boxShadow: [BoxShadow(
                                  blurRadius: 2,
                                  offset: Offset(0,0.6)
                                )],
                              ),
                              child: FlatButton(
                                child: Text('Chat',style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 0.2 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset('assets/images/p2.jpg'),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top:15.0,right: 110,bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Text('Kiran Patel',style: GoogleFonts.roboto(fontSize: 18,color: Colors.black),textAlign: TextAlign.start,),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Text('Producing Apple ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Text('Since 2015 ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Text('Amritsar, Punjab ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Kiran()));
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01,top: MediaQuery.of(context).size.height * 0.01),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.045,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                boxShadow: [BoxShadow(
                                  blurRadius: 2,
                                  offset: Offset(0,0.6)
                                )],
                              ),
                              child: FlatButton(
                                child: Text('Call',style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.045,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                boxShadow: [BoxShadow(
                                  blurRadius: 2,
                                  offset: Offset(0,0.6)
                                )],
                              ),
                              child: FlatButton(
                                child: Text('Chat',style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 0.2 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset('assets/images/p2.jpg'),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top:15.0,right: 110,bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mitesh Shah ',style: GoogleFonts.roboto(fontSize: 18,color: Colors.black),textAlign: TextAlign.start,),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Text('Producing Maize ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Text('Since 2007 ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Text('Surat, Gujarat',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mitesh()));
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01,top: MediaQuery.of(context).size.height * 0.01),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.045,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                boxShadow: [BoxShadow(
                                  blurRadius: 2,
                                  offset: Offset(0,0.6)
                                )],
                              ),
                              child: FlatButton(
                                child: Text('Call',style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.045,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                boxShadow: [BoxShadow(
                                  blurRadius: 2,
                                  offset: Offset(0,0.6)
                                )],
                              ),
                              child: FlatButton(
                                child: Text('Chat',style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),),
                                onPressed: () {},
                              ),
                            ),
                          ),
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
  }
}