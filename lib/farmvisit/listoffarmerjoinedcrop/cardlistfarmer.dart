import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmVisitListCard extends StatelessWidget {
  
  final String image;
  final String name;
  final String producing;
  final String since;
  final String address;
  final Widget page;

  const FarmVisitListCard({Key key, this.page, this.image, this.name, this.producing, this.since, this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.060,
                            decoration: BoxDecoration(shape: BoxShape.circle
                            ),
                            child: Image.asset(image),
                          ),
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,right: MediaQuery.of(context).size.height *0.110,bottom: MediaQuery.of(context).size.height *0.005),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name,style: GoogleFonts.roboto(fontSize: 18,color: Colors.black),textAlign: TextAlign.start,),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
                              Padding(
                                padding: const EdgeInsets.only(right: 0.0),
                                child: Text('Producing $producing',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.030),
                                child: Text('Since $since',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 0.0),
                                child: Text(address,style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                              ),
                            ],
                          ),
                        ),
                        onTap: (){
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Umeshs()));
                        },
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01,top: MediaQuery.of(context).size.height * 0.01,left: MediaQuery.of(context).size.height * 0.02,right: MediaQuery.of(context).size.height * 0.02),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.045,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(0,0,87,1),
                                  borderRadius: BorderRadius.circular(0),
                                  boxShadow: [BoxShadow(
                                    blurRadius: 1,
                                    offset: Offset(0,0.6)
                                  )],
                                ),
                                child: FlatButton(
                                  child: Text('Call',style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),),
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.height * 0.01,),
                            Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.045,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  color: Color.fromRGBO(0,0,87,1),
                                  boxShadow: [BoxShadow(
                                    blurRadius: 1,
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
            );
  }
}