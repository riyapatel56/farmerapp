
import 'package:farmer/customer/purchasingbill/listoffarmers/shivam.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchasingBill extends StatefulWidget {
  @override
  _PurchasingBillState createState() => _PurchasingBillState();
}

class _PurchasingBillState extends State<PurchasingBill> {

  void _showRatingDialog() {
    // We use the built in showDialog function to show our Rating Dialog
    var commentw;
    showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) {
          return RatingDialog(
            icon: Icon(Icons.rate_review,
              size:  50,
              color: Colors.purple,
            ),
            title: "The Rating Dialog",
            description:
                "Tap a star to set your rating for this farmer inconsideration in communication, goods, etc..",
            submitButton: "SUBMIT",
            alternativeButton: "Contact Farmer instead?",
            accentColor: Colors.cyan[800], // optional
            onSubmitPressed: (int rating) {
              print("onSubmitPressed: rating = $rating");
            },
          );
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer List',style: GoogleFonts.roboto(),),
        backgroundColor: Colors.cyan[800],
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
              child: Container(
                //height: MediaQuery.of(context).size.height * 0.199,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.150,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shivam Zala ',style: GoogleFonts.roboto(fontSize: 18),textAlign: TextAlign.start,),
                        Padding(
                          padding:EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.030),
                          child: Text('1234567890 ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 0.0),
                          child: Text('Buyed 5 kg Paddy ',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.03),
                          child: Text('Rs - 20000',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.007,bottom: MediaQuery.of(context).size.height * 0.01),
                          child: Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.030,
                                child: RaisedButton(
                                  color: Colors.white,
                                  child: Text(
                                    'Payment',
                                    style: GoogleFonts.roboto(color: Colors.purple,fontSize: 15),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.height * 0.01),
                              
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.007,bottom: MediaQuery.of(context).size.height * 0.017),
                          child: Row(
                            children: [
                              Container(
                                      height: MediaQuery.of(context).size.height * 0.040,
                                      child: RaisedButton(
                                        color: Colors.purple,
                                        child: Text(
                                          'Accept ',
                                          style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),
                                        ),
                                        onPressed: (){},
                                      ),
                                    ),
                              SizedBox(width: MediaQuery.of(context).size.height * 0.01),
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.040,
                                  child: RaisedButton(
                                    color: Colors.purple,
                                    child: Text(
                                      'Reject ',
                                      style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),
                                    ),
                                    onPressed: (){},
                                  ),
                                ),
                            ],
                          ),
                        ),
                              
                      ],
                    ),
                  ),
                  
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PBFShivam()));
                  },
                ),
              ),
            ),
            
            
        ],
      ),
    );
  }
}

