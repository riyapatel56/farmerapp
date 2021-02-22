
import 'package:farmer/abccentermain/request/newrequest/newrequest.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ABCProfile/abcprofile.dart';
import 'request/pendingrequest/pendingrequest.dart';


/*class ABCMainHome extends StatefulWidget {
  @override
  _ABCMainHomeState createState() => _ABCMainHomeState();
}

class _ABCMainHomeState extends State<ABCMainHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dashboard',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.1),),
        backgroundColor: Colors.orange[600],
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              icon: Icon(Icons.person_add,size: 35,color: Color.fromRGBO(0,0,87,1),), 
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ABCProfile()));
              },
            ),
          ),
        ],
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Color.fromRGBO(0,0,87,1),
          tabs: [
            Tab(
              child: Text("ABCMHome CENTER",style: GoogleFonts.openSans(fontSize: 14,fontWeight: FontWeight.w600),),
            ),
            //Tab(
              //child: Text('FPO',style: GoogleFonts.openSans(fontSize: 14,fontWeight: FontWeight.w600),),
            //),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      body: TabBarView(
        children: [

          //ABCMHome
          ABCMHome(),
          
          //pending
          //FPO(),

        ],
        controller: _tabController,
      ),
    );
  }
}*/

class ABCMHome extends StatefulWidget {
  @override
  _ABCState createState() => _ABCState();
}

class _ABCState extends State<ABCMHome>
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
      appBar: AppBar(
        title: Text('ABC Dashboard',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.1),),
        backgroundColor: Colors.orange[600],
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              icon: Icon(Icons.person_add,size: 35,color: Color.fromRGBO(0,0,87,1),), 
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ABCProfile()));
              },
            ),
          ),
        ],
      ),
      body: Column(
              children: [
                
                Padding(
                padding: const EdgeInsets.only(left: 54,right:54,top:18,bottom: 20),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(226,226,226,1)
                  ),
                  child: TabBar(
                    controller: _tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      color: Colors.lightGreen[400]
                    ),
                    labelColor: Color.fromRGBO(0,0,87,1),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Tab(
                          text: 'New Request',
                        ),
                      ),

                      // second tab [you can add an icon using the icon property]
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Tab(
                          text: 'Pending Request',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // tab bar view here
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // first tab bar view widget 
                    SingleChildScrollView(
                      child: Center(
                        child: NewRequest(),
                      ),
                    ),

                    // second tab bar view widget
                    SingleChildScrollView(
                      child: Center(
                        child: PendingRequest(),
                      ),
                    ),

                  ],
                ),
              ),

              ],
            ),
    );
  }
}

class FPO extends StatefulWidget {
  @override
  _FPOState createState() => _FPOState();
}

class _FPOState extends State<FPO>
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
      appBar: AppBar(
        title: Text('FPO Dashboard',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.1),),
        backgroundColor: Colors.orange[600],
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              icon: Icon(Icons.person_add,size: 35,color: Color.fromRGBO(0,0,87,1),), 
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ABCProfile()));
              },
            ),
          ),
        ],
      ),
      body: Column(
              children: [
                
                 Padding(
                padding: const EdgeInsets.only(left: 54,right:54,top:18,bottom: 20),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(226,226,226,1)
                  ),
                  child: TabBar(
                    controller: _tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      color: Colors.lightGreen[400]
                    ),
                    labelColor: Color.fromRGBO(0,0,87,1),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      // first tab [you can add an icon using the icon property]
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Tab(
                          text: 'New Request',
                        ),
                      ),

                      // second tab [you can add an icon using the icon property]
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Tab(
                          text: 'Pending Request',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // tab bar view here
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // first tab bar view widget 
                    SingleChildScrollView(
                      child: Center(
                        child: NewRequest(),
                      ),
                    ),

                    // second tab bar view widget
                    SingleChildScrollView(
                      child: Center(
                        child: PendingRequest(),
                      ),
                    ),

                  ],
                ),
              ),

              ],
            ),
    );
  }
}
