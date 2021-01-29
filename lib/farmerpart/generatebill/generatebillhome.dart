import 'package:farmer/farmerpart/generatebill/traders.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GenerateBillHome extends StatefulWidget {
  @override
  _GenerateBillHomeState createState() => _GenerateBillHomeState();
}

class _GenerateBillHomeState extends State<GenerateBillHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Bill'),
        backgroundColor: Colors.green[800],
      ),
      body: AllTraders(),
    );
  }
}

class AllTraders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final traderData = Provider.of<Traders>(context);
    final trds = traderData.items;

    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: trds.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 0.002255 * MediaQuery.of(context).size.height),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: trds[i],
      child: TrdItem(
        name: trds[i].name,
        phone: trds[i].phone,
        imageUrl: trds[i].imgUrl,
        buy: trds[i].buy,
        address: trds[i].address,
        since: trds[i].since,
        rating: trds[i].rating,
        mail: trds[i].mail,
        //price: trds[i].price,
      ),
      ),
    );
  }
}

class TrdItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String phone;
  final String buy;
  final String address;
  final String price;
  final String since;
  final String rating;
  final String mail;

  TrdItem({Key key, this.name, this.imageUrl,this.phone, this.buy, this.address, this.price, this.since, this.rating, this.mail}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final trd = Provider.of<Trader>(context);

    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushNamed(DetailPage.routeName,arguments: pdt.id);
      },
      child: Padding(
        padding: EdgeInsets.all(0.01 * MediaQuery.of(context).size.height),
        child: Container(
          height: 0.100 * MediaQuery.of(context).size.height,
          child: Padding(
              padding: EdgeInsets.all(0.008 * MediaQuery.of(context).size.height),
              child: Container(
                height: 0.195 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(top: 0.01 * MediaQuery.of(context).size.height),
                        child: Container(
                          height: 0.05 * MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(imageUrl),
                        ),
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(top: 0.01 * MediaQuery.of(context).size.height,right: 0.110 * MediaQuery.of(context).size.height,bottom: 0.005 * MediaQuery.of(context).size.height),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 0.025 * MediaQuery.of(context).size.height),
                              child: Text(name,style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Text(buy,style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height),
                              child: Text('Trading Since $since',style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height,bottom: 0.005 * MediaQuery.of(context).size.height),
                              child: Text(address,style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.star_rate,size: 20,color: Colors.black54,),
                                SizedBox(width: 0.005 * MediaQuery.of(context).size.height,),
                                Padding(
                                  padding: EdgeInsets.only(right: 0.03 * MediaQuery.of(context).size.height),
                                  child: Text(rating,style: GoogleFonts.roboto(fontSize: 14,color: Colors.black54),textAlign: TextAlign.start,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Shyam()));
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
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.00),
                      child: Row(
                        children: [
                          
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height:  0.0695 * MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                  offset: Offset(1,0),
                                  //blurRadius: 0.5,
                                )]
                              ),
                              child: FlatButton(
                                child: Text('Call',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            alignment: Alignment.centerRight,
                              height: 0.0695 * MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                  offset: Offset(1,0),
                                  //blurRadius: 0.5,
                                )]
                              ),
                            child: FlatButton(
                              child: Text('Chat',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 0.059 * MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: FlatButton(
                                child: Text('Generate Bill',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                                      elevation: 16,
                                        child: Container(
                                          height: 0.620 * MediaQuery.of(context).size.height,
                                          width: 0.400 * MediaQuery.of(context).size.width,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01,left: MediaQuery.of(context).size.height * 0.15),
                                                child: Text(
                                                  'Bill',
                                                  style: GoogleFonts.openSans(
                                                    fontSize: 0.025 * MediaQuery.of(context).size.height, 
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.008,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        'Name',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.002,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        name,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.008,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        'Item Bought',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.002,left: MediaQuery.of(context).size.height * 0.012,right: MediaQuery.of(context).size.height * 0.012),
                      child: Container(
                        height: MediaQuery.of(context).size.height *0.03,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        child: TextField(
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.008,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        'Total Amount',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.002,left: MediaQuery.of(context).size.height * 0.012,right: MediaQuery.of(context).size.height * 0.012),
                      child: Container(
                        height: MediaQuery.of(context).size.height *0.03,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        child: TextField(
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.008,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        'Mobile Number',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.002,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        phone,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.008,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        'Mail ID',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.002,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        mail,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.008,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        'From',
                        style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.002,left: MediaQuery.of(context).size.height * 0.012),
                      child: Text(
                        address,
                        style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06,left: MediaQuery.of(context).size.height * 0.058,bottom: MediaQuery.of(context).size.height * 0.058),
                        child: FlatButton(
                          color: Colors.purple,
                          onPressed: () {},
                          child: Text(
                            'Request For Payment',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                  );  
                                },
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
      ),
    );
  }
}

