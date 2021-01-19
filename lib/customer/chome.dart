
import 'package:farmer/customer/farmsbook/fmhome.dart';
import 'package:farmer/customer/home/traderhome.dart';
import 'package:farmer/customer/profile/prf.dart';
import 'package:farmer/customer/purchasingbill/purchasingbill.dart';
import 'package:farmer/customer/traderselctedcrop/traderselecthome.dart';
import 'package:farmer/logsign.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Thome extends StatefulWidget {
  @override
  _ThomeState createState() => _ThomeState();
}

class _ThomeState extends State<Thome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trader App'),
        backgroundColor: Colors.cyan[800],
        actions: [
          Container(
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderHomebody()));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.003),
                    child: Text(
                      'Edit',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.7,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.0001),
                    child: Icon(Icons.edit_rounded,color: Colors.white,size: 20,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              child: DrawerHeader(
                child: Column(
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 170.0,top: 1),
                       child: Container(
                         alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width/2,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/p1.jpg'),
                    ),
                  ),
                ),
                     ),
                      Padding(
                        padding: const EdgeInsets.only(right: 154.0,top: 15),
                        child: Text(
                          'Pratik Patel',
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140.0,top: 1),
                        child: Text(
                          'xyz@gmail.com',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                decoration: BoxDecoration(
                  color: Colors.cyan[800],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.person_rounded,size: 25,),
                  title: Text('Profile',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderProfileScreen()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.pages_outlined,size: 25,),
                  title: Text('Purchasing Bill',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PurchasingBill()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.money,size: 25,),
                  title: Text('Farmsbook',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FmHome()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.logout,size: 25,),
                  title: Text('LogOut',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Firstpage()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: TraderSelectCropHome(),
    );
  }
}