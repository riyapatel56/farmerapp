
import 'package:farmer/customer/tabccentermember/tabcmhome.dart';
import 'package:farmer/customer/tfpomember/tfpomhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MABCFPOHomeT extends StatefulWidget {
  @override
  _MABCFPOHomeTState createState() => _MABCFPOHomeTState();
}

class _MABCFPOHomeTState extends State<MABCFPOHomeT>
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
          labelColor: Colors.cyanAccent[200],
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
          TABCMHome(),
          
          //pending
          TFPOMHome(),

        ],
        controller: _tabController,
      ),
    );
  }
}