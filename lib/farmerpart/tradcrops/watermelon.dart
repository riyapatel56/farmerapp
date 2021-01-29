import 'package:farmer/customer/drawer/list.dart';
import 'package:flutter/material.dart';

class Watermelon extends StatefulWidget {
  @override
  _WatermelonState createState() => _WatermelonState();
}

class _WatermelonState extends State<Watermelon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watermelon'),
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
                    image: AssetImage("assets/images/wat.jpg",)
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
                  child: Text('Watermelon is grown in favorable climates from tropical to temperate regions worldwide for its large edible fruit, which is a berry with a hard rind and no internal divisions, and is botanically called a pepo. The sweet, juicy flesh is usually deep red to pink, with many black seeds, although seedless varieties exist. The fruit can be eaten raw or pickled, and the rind is edible after cooking. It may also be consumed as a juice or as an ingredient in mixed beverages.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),textAlign: TextAlign.center,),
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