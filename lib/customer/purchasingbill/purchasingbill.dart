import 'package:farmer/customer/purchasingbill/listoffarmers/kiran.dart';
import 'package:farmer/customer/purchasingbill/listoffarmers/nitya.dart';
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
              size: 50,
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
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 170,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top:15.0,right: 110),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shivam Zala ',style: GoogleFonts.roboto(fontSize: 18),textAlign: TextAlign.start,),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text('1234567890 ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text('Buyed 5 kg Paddy ',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text('Rs - 20000',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:7.0),
                          child: Container(
                            height: 30,
                            child: RaisedButton(
                              color: Colors.purple,
                              child: Text(
                                'Rate',
                                style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),
                              ),
                              onPressed: _showRatingDialog,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:25.0,right: 10),
                        child: Icon(Icons.chat_rounded),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PBFShivam()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 170,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top:15.0,right: 110),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Text('Kiran Patel',style: GoogleFonts.roboto(fontSize: 18),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text('1234567890 ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text('Buyed 10 kg wheat ',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text('Rs - 50000',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:7.0),
                          child: Container(
                            height: 30,
                            child: RaisedButton(
                              color: Colors.purple,
                              child: Text(
                                'Rate',
                                style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),
                              ),
                              onPressed: _showRatingDialog,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:25.0,right: 10),
                        child: Icon(Icons.chat_rounded),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PBFKiran()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 170,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top:15.0,right: 110),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nitya Dave',style: GoogleFonts.roboto(fontSize: 18),textAlign: TextAlign.start,),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text('1234567890 ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text('Buyed 1 kg tomato',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text('Rs - 500 ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:7.0),
                          child: Container(
                            height: 30,
                            child: RaisedButton(
                              color: Colors.purple,
                              child: Text(
                                'Rate',
                                style: GoogleFonts.roboto(color: Colors.white,fontSize: 15),
                              ),
                              onPressed: _showRatingDialog,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:25.0,right: 10),
                        child: Icon(Icons.chat_rounded),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PBFNitya()));
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}

