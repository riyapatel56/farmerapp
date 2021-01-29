import 'package:farmer/customer/drawer/list.dart';
import 'package:flutter/material.dart';

class Almond extends StatefulWidget {
  @override
  _AlmondState createState() => _AlmondState();
}

class _AlmondState extends State<Almond> {

  final globalKey = GlobalKey<ScaffoldState>();
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: Text('Almond'),
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
                    image: AssetImage('assets/images/almond.jpg',)
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
                  child: Text('The almond (Prunus dulcis, syn. Prunus amygdalus) is a species of tree native to Iran and surrounding countries[3][4] but widely cultivated elsewhere. The almond is also the name of the edible and widely cultivated seed of this tree. Within the genus Prunus, it is classified with the peach in the subgenus Amygdalus, distinguished from the other subgenera by corrugations on the shell (endocarp) surrounding the seed. ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),textAlign: TextAlign.center,),
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
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScBuyerList()));
              },
            ),
          ],
        ),
      ),
    );
  }
}