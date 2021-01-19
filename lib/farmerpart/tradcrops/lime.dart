import 'package:farmer/customer/drawer/list.dart';
import 'package:farmer/farmerpart/drawerscreen/buyerlist.dart';
import 'package:flutter/material.dart';

class Lime extends StatefulWidget {
  @override
  _LimeState createState() => _LimeState();
}

class _LimeState extends State<Lime> {
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: Text('Lime'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/lime.jpg",)
                  ),
                ),
              ),
            ),
            Text('Details',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600,letterSpacing: 1),),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                height: 250,
                color: Colors.blueGrey[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('The lemon, Citrus limon, is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily North eastern India.The trees ellipsoidal yellow fruit is used for culinary and non-culinary purposes throughout the world, primarily for its juice, which has both culinary and cleaning uses.[2] The pulp and rind are also used in cooking and baking. The juice of the lemon is about 5% to 6% citric acid, with a pH of around 2.2, giving it a sour taste. The distinctive sour taste of lemon juice makes it a key ingredient in drinks and foods such as lemonade and lemon meringue pie.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),textAlign: TextAlign.center,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                height: 50,
                color: Colors.blueGrey[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('See Which ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.center,),
                ),
              ),
            ),
            FlatButton(
              color: Colors.green,
              child: Text('Farmers Are Producing',style: TextStyle(color: Colors.white,fontSize: 18),),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Buyers()));
              },
            ),
            FlatButton(
              color: Colors.green,
              child: Text('       Buyer Is Buying      ',style: TextStyle(color: Colors.white,fontSize: 18),),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Buyer()));
              },
            ),
          ],
        ),
      ),
    );
  }
}