
import 'package:farmer/farmerpart/bottomnavbar/memabcfpo/fpomember/trjfpo/trjcdetailpage.dart';
import 'package:farmer/farmerpart/bottomnavbar/memabcfpo/fpomember/trjfpo/trjcenter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class TrjFPOHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final trjfpoData = Provider.of<Trjfpos>(context);
    final trjfpos = trjfpoData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Trader\'s List'),
        backgroundColor: Colors.blue[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: trjfpos.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 2.50),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: trjfpos[i],
      child: TrjfpoItem(
        name: trjfpos[i].name,
        place: trjfpos[i].place,
        imgUrl: trjfpos[i].imgUrl,
        trading: trjfpos[i].trading,
        phoneno: trjfpos[i].phoneno,
        //page: scbs[i].page,
        since: trjfpos[i].since,
        rating: trjfpos[i].rating,
        email: trjfpos[i].email,
        //price: trds[i].price,
      ),
      ),
    ),
    );
  }
}

class TrjfpoItem extends StatelessWidget {
  
  final String id;
  final String name;
  final String trading;
  final String since;
  final String place;
  final String rating;
  final String imgUrl;
  //final Widget page;
  final String email;
  final String phoneno;
  final String landAcre;
 
  const TrjfpoItem({Key key,this.phoneno, this.landAcre, this.id, this.name, this.trading, this.since, this.place, this.rating, this.imgUrl, this.email}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {

    final trjfpo = Provider.of<Trjfpo>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(TrjFPODetailPage.routeName,arguments: trjfpo.place);
      },
      child: Padding(
        padding: const EdgeInsets.only(top:8.0,left: 8, right: 8),
        child: Container(
          //height: 0.195 * MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.blue[100],width: 1),boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                
                Padding(
                  padding: EdgeInsets.only(top:0.015 * MediaQuery.of(context).size.height,left: 0.01 * MediaQuery.of(context).size.height),
                  child: Container(
                    height: 0.11 * MediaQuery.of(context).size.height,
                    width: 0.11 * MediaQuery.of(context).size.height,
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
                    padding: EdgeInsets.only(top: 0.015 * MediaQuery.of(context).size.height,left: 0.02 * MediaQuery.of(context).size.height),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.021,letterSpacing: 1.0,color: Colors.black),textAlign: TextAlign.start,),
                        SizedBox(height: 1,),
                        Padding(
                          padding: EdgeInsets.only(right: 0.0),
                          child: Text('Trading $trading',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.017,color: Colors.black54),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height,bottom: 0.005 * MediaQuery.of(context).size.height),
                          child: Text('Since $since',style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.017,color: Colors.black54),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.007 * MediaQuery.of(context).size.height),
                          child: Row(
                            
                            children: [
                              Icon(Icons.star_rounded,size: 22,color: Colors.yellow[800],),
                              Padding(
                                padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height),
                                child: Text(rating,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.017,color: Colors.black87),textAlign: TextAlign.start,),
                              ),
                            ],
                          ),
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
                child: Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          //width: MediaQuery.of(context).size.height * 0.13,
                          decoration: BoxDecoration(
                            border: Border(top: BorderSide(width: 1,color: Colors.blue,),right: BorderSide(width: 1,color: Colors.blue))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.001,bottom: MediaQuery.of(context).size.height*0.01,top: MediaQuery.of(context).size.height * 0.007),
                            child: FlatButton(
                              onPressed: null,
                              child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on,color: Colors.black54,size: 0.025* MediaQuery.of(context).size.height,),
                                SizedBox(width: 0.005 * MediaQuery.of(context).size.height,),
                                Text(place,style: GoogleFonts.roboto(fontSize: MediaQuery.of(context).size.height * 0.020,color: Colors.black87)),
                              ],
                            ),
                          ),
                    ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(top: BorderSide(width: 1,color: Colors.blue,),right: BorderSide(width: 1,color: Colors.blue))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01,top: MediaQuery.of(context).size.height * 0.007),
                            child: FlatButton(
                              child: Text('Call',style: GoogleFonts.roboto(color: Colors.black,fontSize: MediaQuery.of(context).size.height * 0.020,),),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            border: Border(top: BorderSide(width: 1,color: Colors.blue,),),
                            color: Colors.white,
                          ),
                          child: Padding(
                           padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01,top: MediaQuery.of(context).size.height * 0.007),
                            child: FlatButton(
                              child: Text('Chat',style: GoogleFonts.roboto(color: Colors.black,fontSize: MediaQuery.of(context).size.height * 0.020,),),
                              onPressed: () {},
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
    );
  }
}

