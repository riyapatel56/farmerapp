import 'package:farmer/customer/listoffarmer/kiran.dart';
import 'package:farmer/customer/listoffarmer/mitesh.dart';
import 'package:farmer/customer/listoffarmer/umeshs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CusFarmerList extends StatefulWidget {
  @override
  _CusFarmerListState createState() => _CusFarmerListState();
}

class _CusFarmerListState extends State<CusFarmerList> {
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
                height: 110,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top:15.0,right: 110),
                    child: Column(
                      children: [
                        Text('Umesh Shah                  ',style: GoogleFonts.roboto(fontSize: 18),textAlign: TextAlign.start,),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text('1234567890 ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text('Producing Wheat ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text('Jaipur, Rajasthan                  ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CFUmeshs()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 110,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top:15.0,right: 110),
                    child: Column(
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
                          child: Text('Producing Apple ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text('Amritsar, Punjab                  ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CFKiran()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 110,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top:15.0,right: 110),
                    child: Column(
                      children: [
                        Text('Mitesh Shah             ',style: GoogleFonts.roboto(fontSize: 18),textAlign: TextAlign.start,),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text('1234567890 ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text('Producing Maize ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text('Surat, Gujarat                  ',style: GoogleFonts.roboto(fontSize: 14),textAlign: TextAlign.start,),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CFMitesh()));
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}