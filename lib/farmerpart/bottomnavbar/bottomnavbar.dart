
import 'package:farmer/farmerpart/bottomnavbar/shopping/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'abcfpo/homeabcfpo.dart';
import 'farmerjoinedcrops/fjcmainpage.dart';
import 'msp/msphome.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
 

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
  var currentTab = [
    FJCMainPage(),
    ABCFPOHome(),
    ShopScreen(),
    MSPHome(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green[900],
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.center_focus_strong),
            label: 'Sell',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.currencyInr),
            label: 'MSP',
          )
        ],
      ),
    );
  }
}

class BottomNavigationBarProvider with ChangeNotifier{

  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }
}
