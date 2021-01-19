import 'package:farmer/customer/drawer/list.dart';
import 'package:farmer/farmerpart/drawerscreen/buyerlist.dart';
import 'package:flutter/material.dart';

class Tomatos extends StatefulWidget {
  @override
  _TomatosState createState() => _TomatosState();
}

class _TomatosState extends State<Tomatos> {

  final globalKey = GlobalKey<ScaffoldState>();
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: Text('Tomato'),
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
                    image: AssetImage("assets/images/tomato.jpg",)
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
                  child: Text('The tomato is the edible berry of the plant Solanum lycopersicum,[1][2] commonly known as a tomato plant. The species originated in western South America and Central America.[2][3] The Nahuatl (the language used by the Aztecs) word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived.[3][4] Its domestication and use as a cultivated food may have originated with the indigenous peoples of Mexico',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),textAlign: TextAlign.center,),
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