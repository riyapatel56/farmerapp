import 'package:farmer/abccentermain/farmermembers/farmmember.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'detailfarmermember.dart';

class FarmerMemberHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final farmermemberData = Provider.of<Farmermembers>(context);
    final frmms = farmermemberData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Farmer Members',style: GoogleFonts.openSans(fontSize: 21,color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
        backgroundColor: Colors.orange[800],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2.0,right: 2,top: 8,),
            child: Divider(height: 1,color: Colors.grey[700],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(alignment: Alignment.centerLeft,child: Text('Farmer Members = 8',style: GoogleFonts.openSans(fontSize: 22,color: Colors.teal[700],fontWeight: FontWeight.w600,letterSpacing: 1.0),)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0,right: 2,top: 4,bottom: 10),
            child: Divider(height: 1,color: Colors.grey[700],),
          ),
          GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: frmms.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 3.55),//childAspectRatio: MediaQuery.of(context).size.height * 0.00257
          itemBuilder: (context, i) => ChangeNotifierProvider.value(value: frmms[i],
          child: FarmerMemberItem(
            name: frmms[i].name,
            id: frmms[i].id,
            imgUrl: frmms[i].imgUrl,
            cropsell: frmms[i].cropsell,
            phoneno: frmms[i].phoneno,
            since: frmms[i].since,
            rating: frmms[i].rating,
            email: frmms[i].email,
            state: frmms[i].state,
            growing: frmms[i].growing,
          ),
          ),
    ),
        ],
      ),
    );
  }
}

class FarmerMemberItem extends StatelessWidget {
  
  final String id;
  final String name;
  final String phoneno;
  final String email;
  final String address;
  final String cropsell;
  final String since;
  final String pincode;
  final String state;
  final String rating;
  final String imgUrl;
  final String landAcre;
  final String income;
  final String growing;
 
  const FarmerMemberItem({Key key,this.phoneno, this.landAcre, this.id, this.name, this.cropsell, this.since, this.rating, this.imgUrl, this.email, this.address, this.pincode, this.state, this.income, this.growing}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {

    final frmm = Provider.of<Farmermember>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(FrmmDetailPage.routeName,arguments: frmm.id);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 8.0,left: 8,top:8 ),
        child: Container(
          //width: double.infinity,
          //height: 0.195 * MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.purple[100],width: 1),boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                
                Padding(
                  padding: EdgeInsets.only(top:0.015 * MediaQuery.of(context).size.height,left: 0.01 * MediaQuery.of(context).size.height),
                  child: Container(
                    height: 0.10 * MediaQuery.of(context).size.height,
                    width: 0.10 * MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(imgUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.01 * MediaQuery.of(context).size.height,left: 0.015 * MediaQuery.of(context).size.height),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(name,style: GoogleFonts.roboto(letterSpacing: 1.1,fontSize: MediaQuery.of(context).size.height * 0.021,fontWeight: FontWeight.w600,color: Colors.black),textAlign: TextAlign.start,),
                            SizedBox(width: 0.01 * MediaQuery.of(context).size.height),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.star_rounded,size: 19,color: Colors.yellow[800],),
                                Padding(
                                  padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height),
                                  child: Text(rating,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.017,color: Colors.black87),textAlign: TextAlign.start,),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 1,),
                        Padding(
                          padding: EdgeInsets.only(right: 0.0),
                          child: Text('Growing $growing',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.017,color: Colors.deepOrange[900]),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height,bottom: 0.005 * MediaQuery.of(context).size.height),
                          child: Text('From $state',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.017,color: Colors.black54),textAlign: TextAlign.start,),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0,right: 18),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.teal[700],
                    child: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Icon(Icons.call,color: Colors.white,)
                    ),
                  ),
                ),
                //onTap: (){
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shyam()));
                //},
                ],
              ),
              


            ],
          ),    
        ),
      ),
    );
  }
}
