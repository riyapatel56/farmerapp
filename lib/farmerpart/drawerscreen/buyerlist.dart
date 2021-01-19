
import 'package:farmer/farmerpart/drawerscreen/buyerindi/shyam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buyer extends StatefulWidget {
  @override
  _BuyerState createState() => _BuyerState();
}

class _BuyerState extends State<Buyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buyers List'),
        backgroundColor: Colors.green[800],
      ),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 0.195 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: Column(
                  children: [
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset('assets/images/p2.jpg'),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top:10.0,right: 110,bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Text('Shyam Shah',style: GoogleFonts.roboto(fontSize: 18,color: Colors.black),textAlign: TextAlign.start,),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Text('Trading Apple ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0,bottom: 5),
                              child: Text('Since 2015 ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_rate,size: 20,color: Colors.black54,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: Text('4.3',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shyam()));
                      },
                    ),
                    
                    Padding(
                      padding: EdgeInsets.only(top: 0.00001 * MediaQuery.of(context).size.height),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.00,top: MediaQuery.of(context).size.height * 0.00),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.001),
                            child: FlatButton(
                              onPressed: null,
                              child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on,color: Colors.black87,size: 20),
                                SizedBox(width: 5,),
                                Text('Varanasi, UP',style: GoogleFonts.roboto(fontSize: 15,color: Colors.black54)),
                              ],
                            ),
                          ),
                        ),
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.068),
                            child: Container(
                              alignment: Alignment.centerRight,
                              height: MediaQuery.of(context).size.height * 0.059,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                  offset: Offset(1,0),
                                  //blurRadius: 0.5,
                                )]
                              ),
                              child: FlatButton(
                                child: Text('Call',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15),),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            alignment: Alignment.centerRight,
                            height: MediaQuery.of(context).size.height * 0.059,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: FlatButton(
                              child: Text('Chat',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15),),
                              onPressed: () {},
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
                height: 0.195 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: Column(
                  children: [
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset('assets/images/p2.jpg'),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top:10.0,right: 110,bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Text('Purvish Patel',style: GoogleFonts.roboto(fontSize: 18,color: Colors.black),textAlign: TextAlign.start,),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Text('Trading Mango ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0,bottom: 5),
                              child: Text('Since 2004 ',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_rate,size: 20,color: Colors.black54,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: Text('4.3',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shyam()));
                      },
                    ),
                    
                    Padding(
                      padding: EdgeInsets.only(top: 0.00001 * MediaQuery.of(context).size.height),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.00,top: MediaQuery.of(context).size.height * 0.00),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.001),
                            child: FlatButton(
                              onPressed: () {},
                              child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on,color: Colors.black87,size: 20),
                                Text('Amritsar, Punjab',style: GoogleFonts.roboto(fontSize: 15,color: Colors.black54)),
                              ],
                            ),
                          ),
                        ),
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.04),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.059,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                  offset: Offset(1,0),
                                  //blurRadius: 0.5,
                                )]
                              ),
                              child: FlatButton(
                                child: Text('Call',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15),),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.059,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              
                            ),
                            child: FlatButton(
                              child: Text('Chat',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15),),
                              onPressed: () {},
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