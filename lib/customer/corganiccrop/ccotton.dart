
import 'package:farmer/customer/listoffarmer/cusfarmerlist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CCotton extends StatefulWidget {
  @override
  _CCottonState createState() => _CCottonState();
}

class _CCottonState extends State<CCotton> {
  bool visibilityBar = false;
  bool visibilityEnv = false;
  bool visibilityLand = false;
  bool visibilityRevenue = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "Bar"){
        visibilityBar = visibility;
      }
      if (field == "Env"){
        visibilityEnv = visibility;
      }
      if (field == "Land"){
        visibilityLand = visibility;
      }
      if (field == "Revenue"){
        visibilityRevenue = visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('Cotton',style: GoogleFonts.roboto(),),
        backgroundColor: Colors.cyan[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01,left: MediaQuery.of(context).size.height*0.01,right: MediaQuery.of(context).size.height*0.01),
              child: Container(
                height: MediaQuery.of(context).size.height*0.240,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.purple[50],
                border: Border.all(color: Colors.purple, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset("assets/images/cotton.jpg",fit: BoxFit.fitWidth,),
                  ),
                )
              ),
            ),
            
            Padding(
              padding: EdgeInsets.only(top: 18.0,left: 8.0,right: 8.0,bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2,color: Colors.grey[400]),),
                ),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Basic Information',
                    style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.w600,letterSpacing: 1,color: Colors.green[800]),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Cotton is a soft, fluffy staple fiber that grows in a boll, or protective case, around the seeds of the cotton plants of the genus Gossypium in the mallow family Malvaceae. The fiber is almost pure cellulose. Under natural conditions, the cotton bolls will increase the dispersal of the seeds.',
                style: GoogleFonts.openSans(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 0.5),
              ),
            ),

            InkWell(
              onTap: (){ 
                visibilityBar ? null : _changed(true, "Bar");
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                    )],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Types Of Cotton',style: GoogleFonts.openSans(fontSize: 16,color: Colors.purple[600],fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.arrow_downward,size: 20),
                    ],
                  ),
                ),
              ),
            ),

            visibilityBar ? Container(
              color: Color.fromRGBO(255,255,255,1),
              child: TypesofCrops(),
            ) : Container(),

            InkWell(
              onTap: (){ 
                visibilityEnv ? null : _changed(true, "Env");
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                    )],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Suitable Environment To Grow',style: GoogleFonts.openSans(fontSize: 16,color: Colors.purple[600],fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.arrow_downward,size: 20),
                    ],
                  ),
                ),
              ),
            ),

            visibilityEnv ? Container(
              color: Color.fromRGBO(255,255,255,1),
              child: Env(),
            ) : Container(),

            InkWell(
              onTap: (){ 
                visibilityLand ? null : _changed(true, "Land");
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                    )],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Land Management',style: GoogleFonts.openSans(fontSize: 16,color: Colors.purple[600],fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.arrow_downward,size: 20),
                    ],
                  ),
                ),
              ),
            ),

            visibilityLand ? Container(
              color: Color.fromRGBO(255,255,255,1),
              child: Land(),
            ) : Container(),

            InkWell(
              onTap: (){ 
                visibilityRevenue ? null : _changed(true, "Revenue");
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                    )],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Revenue',style: GoogleFonts.openSans(fontSize: 16,color: Colors.purple[600],fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.arrow_downward,size: 20),
                    ],
                  ),
                ),
              ),
            ),

            visibilityRevenue ? Container(
              color: Color.fromRGBO(255,255,255,1),
              child: Revenue(),
            ) : Container(),


            Padding(
              padding: const EdgeInsets.only(top: 15.0,bottom: 15,left: 15,right:15),
              child: Container(
              height: 110,
              width: double.infinity,
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
                      'Total Farmers Joined = 18',
                      style: GoogleFonts.openSans(
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      child: FlatButton(
                        color: Colors.purple[600],
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CusFarmerList()));
                        },
                        child: Text(
                          'See Joined Farmers',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01 ,bottom: 20,left: 15,right:15),
              child: Container(
              height: 110,
              width: double.infinity,
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
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.018),
                    child: Text(
                      'Are You Intrested In Joining ?',
                      style: GoogleFonts.openSans(
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.008),
                    child: FlatButton(
                      color: Colors.purple[600],
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CusFarmerList()));
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

          ],
        ),
      ),
    );
  }
}

//dropdown
class TypesofCrops extends StatefulWidget {
  @override
  _TypesofCropsState createState() => _TypesofCropsState();
}

class _TypesofCropsState extends State<TypesofCrops> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          border: Border.all(width: 1,color: Colors.green),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'There are four commercially grown species of cotton, all domesticated in antiquity:\n\nGossypium hirsutum – upland cotton, native to Central America, Mexico, the Caribbean and southern Florida (90% of world production)\n\nGossypium barbadense – known as extra-long staple cotton, native to tropical South America (8% of world production)\n\nGossypium arboreum – tree cotton, native to India and Pakistan (less than 2%)\n\nGossypium herbaceum – Levant cotton, native to southern Africa and the Arabian Peninsula (less than 2%)',
            style: GoogleFonts.openSans(fontSize: 16),
          ),
        )
      ),
    );
  }
}

class Env extends StatefulWidget {
  @override
  _EnvState createState() => _EnvState();
}

class _EnvState extends State<Env> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          border: Border.all(width: 1,color: Colors.green),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Cotton is a plant that needs a long frost-free period, a lot of heat and plenty of sunshine. \n\nIt prefers warm and humid climate. Cotton seeds will have a small germination rate, \nif the soil temperature is below 60°F (15°C). During active growth, the ideal air temperature is 70 to 100°F (21-37°C).',
            style: GoogleFonts.openSans(fontSize: 16),
          ),
        )
      ),
    );
  }
}


class Land extends StatefulWidget {
  @override
  _LandState createState() => _LandState();
}

class _LandState extends State<Land> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          border: Border.all(width: 1,color: Colors.green),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'The depth of the soil should be around one meter or more and there should be no impenetrable layers otherwise there would be no proper root development resulting in poor yield. \n\nThe soil for cotton cultivation should not be alkaline or saline and also should not have drainage issues. \n\npH of the soil is not considered very important, but 5.5 to 7.5 pH scale is considered best for cotton. \n\nAluminum concentration in the soil is harmful for cotton cultivation. Other soil types which are suitable for cotton are red, light red, ashy and brackish soil.',
            style: GoogleFonts.openSans(fontSize: 16),
          ),
        )
      ),
    );
  }
}

class Revenue extends StatefulWidget {
  @override
  _RevenueState createState() => _RevenueState();
}

class _RevenueState extends State<Revenue> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          border: Border.all(width: 1,color: Colors.green),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Assumptions of Cotton Cultivation Project Report :\n-  Cost of cotton seeds: Rs 740 per 450 g.\n-  The charge of labor: Rs 300 per man-day.\n-  Cost of animal labor: Rs 250 per pair.\n-  Cost of machine power: Rs 600 per hour.\n-  Cost of manure per kg: Rs 15.\n-  Cost of fertilizers per kg: Rs 100.\n\nSale Price :\n-  Sale price of cotton per kg: Rs 160.',
            style: GoogleFonts.openSans(fontSize: 16),
          ),
        )
      ),
    );
  }
}