
import 'package:farmer/customer/tabccenter/tabcenterhome.dart';
import 'package:farmer/customer/tfpo/thomefpo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TABCFPOHome extends StatefulWidget {
  @override
  _TABCFPOHomeState createState() => _TABCFPOHomeState();
}

class _TABCFPOHomeState extends State<TABCFPOHome>
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
        backgroundColor: Colors.cyan[800],
        automaticallyImplyLeading: false,
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.cyanAccent[100],
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
          TABCCenterHome(),
          
          //pending
          TFPOHome(),

        ],
        controller: _tabController,
      ),
    );
  }
}