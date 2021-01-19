import 'package:flutter/material.dart';

class Purvish extends StatefulWidget {
  @override
  _PurvishState createState() => _PurvishState();
}

class _PurvishState extends State<Purvish> {
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: Text('Purvish Patel'),
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
                    image: AssetImage('assets/images/l1.jpg'),
                  ),
                ),
              ),
            ),
            Text('Details',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600,letterSpacing: 1),),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                alignment: Alignment.topLeft,
                height: 250,
                color: Colors.blueGrey[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Name: Purvish Patel\nE-mail: xyz@gmail.com\nMobile No: 123456789 \nBought Items: 35 kg Cotton, \n                        30 kg wheat',
                    style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 18,letterSpacing: 1,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            FlatButton(
              color: Colors.green,
              child: Text('Contact Now',style: TextStyle(color: Colors.white,fontSize: 18),),
              onPressed: (){
                final snackBar = SnackBar(content: Text('Contacting'));
               globalKey.currentState.showSnackBar(snackBar);
              },
            ),
          ],
        ),
      ),
    );
  }
}