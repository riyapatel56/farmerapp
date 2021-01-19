import 'package:farmer/customer/drawer/list.dart';
import 'package:farmer/farmerpart/drawerscreen/buyerlist.dart';
import 'package:flutter/material.dart';

class Coffee extends StatefulWidget {
  @override
  _CoffeeState createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {

  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: Text('Coffee'),
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
                    image: AssetImage('assets/images/oc.jpg',)
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
                  child: Text('Coffea is a genus of flowering plants in the family Rubiaceae. Coffea species are shrubs or small trees native to tropical and southern Africa and tropical Asia. The seeds of some species, called coffee beans, are used to flavor various beverages and products. The fruits, like the seeds, contain a large amount of caffeine, and have a distinct sweet taste and are often juiced. ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),textAlign: TextAlign.center,),
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