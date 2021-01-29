
import 'package:farmer/farmvisit/listoffarmerjoinedcrop/listfarmerhome.dart';
import 'package:flutter/material.dart';

class FarmVisitHome extends StatefulWidget {
  @override
  _FarmVisitHomeState createState() => _FarmVisitHomeState();
}

class _FarmVisitHomeState extends State<FarmVisitHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Container(
          alignment: Alignment.center,
          child: Text('Farm Visit')
        ),
        automaticallyImplyLeading: false,
      ),
      body: FarmVisitList(),
    );
  }
}