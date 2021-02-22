
/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'abccentmember/abcmhome.dart';
import 'fpomember/homefpom.dart';


class MABCFPOHome extends StatefulWidget {
  @override
  _MABCFPOHomeState createState() => _MABCFPOHomeState();
}

class _MABCFPOHomeState extends State<MABCFPOHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dashboard',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.1),),
        backgroundColor: Colors.green[900],
        automaticallyImplyLeading: false,
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.lightGreenAccent[700],
          tabs: [
            Tab(
              child: Text("ABC CENTER",style: GoogleFonts.openSans(fontSize: 14,fontWeight: FontWeight.w600),),
            ),
            Tab(
              child: Text('FPO',style: GoogleFonts.openSans(fontSize: 14,fontWeight: FontWeight.w600),),
            ),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      body: TabBarView(
        children: [

          //ABC
          ABCMHome(),
          
          //pending
          FPOMHome(),

        ],
        controller: _tabController,
      ),
    );
  }
}*/