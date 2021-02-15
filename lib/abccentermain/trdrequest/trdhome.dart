
import 'package:farmer/abccentermain/trdrequest/trdrdetailpage.dart';
import 'package:farmer/abccentermain/trdrequest/trdrequest.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TrdRHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final trdmemberData = Provider.of<Trdmrequests>(context);
    final trdmrs = trdmemberData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Traders List ',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
        backgroundColor: Colors.orange[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: trdmrs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 2.46),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: trdmrs[i],
      child: TrdmrItem(
        name: trdmrs[i].name,
        id: trdmrs[i].id,
        imgUrl: trdmrs[i].imgUrl,
        trading: trdmrs[i].trading,
        phoneno: trdmrs[i].phoneno,
        since: trdmrs[i].since,
        rating: trdmrs[i].rating,
        email: trdmrs[i].email,
        state: trdmrs[i].state,
      ),
      ),
    ),
    );
  }
}

class TrdmrItem extends StatelessWidget {
  
  final String id;
  final String name;
  final String phoneno;
  final String email;
  final String address;
  final String trading;
  final String since;
  final String pincode;
  final String state;
  final String rating;
  final String imgUrl;
  final String landAcre;
  final String income;
 
  const TrdmrItem({Key key,this.phoneno, this.landAcre, this.id, this.name, this.trading, this.since, this.rating, this.imgUrl, this.email, this.address, this.pincode, this.state, this.income}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {

    final trdmr = Provider.of<Trdmrequest>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(TMRDetailPage.routeName,arguments: trdmr.id);
      },
      
      child: Padding(
        padding: EdgeInsets.only(top:8.0,left: 8,right: 8),
        child: Container(
          //width: double.infinity,
          //height: 0.195 * MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.purple[100],width: 1),boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
          child: Padding(
            padding: EdgeInsets.only(top:0.01 * MediaQuery.of(context).size.height,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                  
                  Padding(
                    padding: EdgeInsets.only(top:0.001 * MediaQuery.of(context).size.height,left: 0.01 * MediaQuery.of(context).size.height),
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

                  Padding(
                    padding: EdgeInsets.only(top: 0.01 * MediaQuery.of(context).size.height,left: 0.015 * MediaQuery.of(context).size.height),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(name,style: GoogleFonts.roboto(letterSpacing: 1.1,fontSize: MediaQuery.of(context).size.height * 0.023,fontWeight: FontWeight.w600,color: Colors.black),textAlign: TextAlign.start,),
                            SizedBox(width: 0.01 * MediaQuery.of(context).size.height),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.star_rounded,size: 0.022* MediaQuery.of(context).size.height,color: Colors.yellow[800],),
                                Padding(
                                  padding: EdgeInsets.only(left: 0.007 * MediaQuery.of(context).size.height),
                                  child: Text(rating,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.017,color: Colors.black87),textAlign: TextAlign.start,),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 0.001* MediaQuery.of(context).size.height,),
                        Text('Trading $trading',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.019,color: Colors.black54),textAlign: TextAlign.start,),
                        Padding(
                          padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height,bottom: 0.005 * MediaQuery.of(context).size.height),
                          child: Text('From $state',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.019,color: Colors.black54),textAlign: TextAlign.start,),
                        ),
                      ],
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
                      Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.050,
                          child: FlatButton(
                            color: Colors.orange[400],//Color.fromRGBO(0,0,87,1),
                            onPressed: () {  },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Icon(Icons.call,color: Color.fromRGBO(0,0,87,1),size: 23),
                                ),
                                SizedBox(width: 0.007* MediaQuery.of(context).size.width,),
                                Text('Call',style: GoogleFonts.openSans(fontSize: 20,color: Color.fromRGBO(0,0,87,1),fontWeight: FontWeight.w600,letterSpacing: .8), )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: FlatButton(
                            color: Color.fromRGBO(0,0,87,1),
                            onPressed: () {  },
                            child: Text(' Accept ',style: GoogleFonts.openSans(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: .8),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: FlatButton(
                            color: Color.fromRGBO(0,0,87,1),
                            onPressed: () {  },
                            child: Text(' Reject ',style: GoogleFonts.openSans(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: .8),),
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
      ),
    );
  }
}

