import 'package:farmer/farmerpart/article/article.dart';
import 'package:farmer/farmerpart/drawerscreen/buyerlist.dart';
import 'package:farmer/farmerpart/drawerscreen/profileshow.dart';
import 'package:farmer/farmerpart/editcrops/homebody.dart';
import 'package:farmer/farmerpart/farmerselectedcrops/fscmainpage.dart';
import 'package:farmer/farmerpart/generatebill/generatebillhome.dart';
import 'package:farmer/farmerpart/shopping/mainscreen.dart';
import 'package:farmer/logsign.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmerHome extends StatefulWidget {
  @override
  _FarmerHomeState createState() => _FarmerHomeState();
}

class _FarmerHomeState extends State<FarmerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.w600
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.green[900],
        actions: [
          Container(
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeBody()));
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
        iconTheme: IconThemeData(color: Colors.white),
        //automaticallyImplyLeading: false,
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
                        padding: const EdgeInsets.only(right: 149.0,top: 10),
                        child: Text(
                          'Rajesh Shah',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 146.0,top: 1),
                        child: Text(
                          'Organic Farmer',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                decoration: BoxDecoration(
                  color: Colors.green[800],
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.list,size: 25,),
                  title: Text('List Of Buyer',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Buyer()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.shopping_cart,size: 25,),
                  title: Text('Shop',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShopScreen()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.request_page,size: 25,),
                  title: Text('Generate Bill',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GenerateBillHome()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Icon(Icons.article,size: 25,),
                  title: Text('Article',style: GoogleFonts.openSans(fontSize: 18),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Article()));
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
      body: FSCMainPage(),
    );
  }
}

