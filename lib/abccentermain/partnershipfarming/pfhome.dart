import 'package:farmer/abccentermain/partnershipfarming/pfdetailpage.dart';
import 'package:farmer/abccentermain/partnershipfarming/pfequest.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PFHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final pfarmerData = Provider.of<Pfrequests>(context);
    final fmrs = pfarmerData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Partnership Farming',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
        backgroundColor: Colors.orange[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: fmrs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 2.55),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: fmrs[i],
      child: PFItem(
        name: fmrs[i].name,
        id: fmrs[i].id,
        imgUrl: fmrs[i].imgUrl,
        growing: fmrs[i].growing,
        phoneno: fmrs[i].phoneno,
        since: fmrs[i].since,
        rating: fmrs[i].rating,
        email: fmrs[i].email,
        state: fmrs[i].state,
      ),
      ),
    ),
    );
  }
}

class PFItem extends StatelessWidget {
  
  final String id;
  final String name;
  final String phoneno;
  final String email;
  final String address;
  final String growing;
  final String since;
  final String pincode;
  final String state;
  final String rating;
  final String imgUrl;
  final String landAcre;
  final String income;
 
  const PFItem({Key key,this.phoneno, this.landAcre, this.id, this.name, this.growing, this.since, this.rating, this.imgUrl, this.email, this.address, this.pincode, this.state, this.income}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {

    final pf = Provider.of<Pfrequest>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(PfrequestDetailPage.routeName,arguments: pf.id);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 8.0,left: 8,top: 5 ),
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
                          child: Text(growing,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.017,color: Colors.deepOrange[900]),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height,bottom: 0.005 * MediaQuery.of(context).size.height),
                          child: Text('From $state',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.017,color: Colors.black54),textAlign: TextAlign.start,),
                        ),
                      ],
                    ),
                  ),
                ),
                //onTap: (){
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shyam()));
                //},
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                            child: Container(
                              color: Colors.orange[400],
                              width: MediaQuery.of(context).size.width * 0.255,
                              height: MediaQuery.of(context).size.height * 0.045,
                              child: Center(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 7,),
                                      Padding(
                                        padding: const EdgeInsets.only(top:3.0),
                                        child: Icon(Icons.call,color: Color.fromRGBO(0,0,87,1),size: 19),
                                      ),
                                      SizedBox(width: 7,),
                                      Text('Call',style: GoogleFonts.openSans(fontSize: 20,color: Color.fromRGBO(0,0,87,1),fontWeight: FontWeight.w600,letterSpacing: .8), )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.285,
                              height: MediaQuery.of(context).size.height * 0.045,
                              child: FlatButton(
                                color: Color.fromRGBO(0,0,87,1),//Color.fromRGBO(0,0,87,1),
                                onPressed: () {  },
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text('Resolve',style: GoogleFonts.openSans(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: .8),
                              ),
                                ),
                            ),
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
    );
  }
}


