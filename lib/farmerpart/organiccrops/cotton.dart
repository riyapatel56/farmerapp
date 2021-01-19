
import 'package:farmer/farmerpart/cropjoinform/cropform.dart';
import 'package:farmer/farmerpart/listoffarmerjoinedcrop/listfarmerhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cotton extends StatefulWidget {
  @override
  _CottonState createState() => _CottonState();
}

class _CottonState extends State<Cotton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('Cotton',style: GoogleFonts.roboto(),),
        backgroundColor: Colors.green[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
              padding: const EdgeInsets.only(top:10.0,left: 10,right: 10),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.purple[50],
                border: Border.all(color: Colors.purple, width: 2),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/cot.jpg",)
                  ),
                ),
              ),
            ),
            Text('Information',style: GoogleFonts.openSans(fontSize: 23,fontWeight: FontWeight.w600,letterSpacing: 1),),
            Padding(
              padding: const EdgeInsets.only(left:5 ,right:5,top:8),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(offset: Offset(0,.72),color: Colors.grey[100],blurRadius: 4),
                  ],
                ),
                height: MediaQuery.of(context).size.height*0.65,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0,right:8.0),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Container(
                          child: ListTile(
                            title: Text(
                              'Cotton is one of the most important fibers and a cash crop of India and plays a dominant role in the industrial and agricultural economy of the country. ',
                              style: GoogleFonts.roboto(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          child: ListTile(
                            title: Text(
                              'Cotton in India provides a direct livelihood to 6 million farmers and about 40 -50 million people are employed in the cotton trade and its processing.',
                              style: GoogleFonts.roboto(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          child: ListTile(
                            title: Text(
                              'Types of cotton:- \n- Long Staple Cotton\n- Short Staple Cotton \n- Medium Staple Cotton',
                              style: GoogleFonts.roboto(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          child: ListTile(
                            title: Text(
                              'Temperature: 25°C is ideal for cotton cultivation.',
                              style: GoogleFonts.roboto(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          child: ListTile(
                            title: Text(
                              'Rainfall: 150 cm to 200 cm rainfall is essential for cotton farming. Moisture in the wind is necessary.',
                              style: GoogleFonts.roboto(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,bottom: 5),
                        child: Container(
                          child: ListTile(
                            title: Text(
                              'Soil: Irrigated cotton should be grown on medium black to deep black soil having a pH range between 6 to 8. Saline soils are not suitable for cotton cultivation. ',
                              style: GoogleFonts.roboto(),
                            ),
                          ),
                        ),
                      ),
            
            Padding(
              padding: const EdgeInsets.only(top: 15.0,bottom: 15),
              child: Container(
                height: 110,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    offset: Offset(0,0.40),
                    blurRadius: 5,
                    color: Colors.grey[400],
                  )],
                ),
                child: Column(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        'See How Many Farmers Have Joined',
                        style: GoogleFonts.openSans(
                          fontSize: 19,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FlatButton(
                        color: Colors.purple[600],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerList()));
                        },
                        child: Text(
                          'Open',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 4.0,bottom: 15),
              child: Container(
                height: 110,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    offset: Offset(0,0.40),
                    blurRadius: 5,
                    color: Colors.grey[400],
                  )],
                ),
                child: Column(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        'Want To Join ?',
                        style: GoogleFonts.openSans(
                          fontSize: 19,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FlatButton(
                        color: Colors.purple[600],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CropForm()));
                        },
                        child: Text(
                          'Join',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white
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
              ),
            ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}