import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
     // width: 1000,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 20,bottom: 20,right: 5),
            child: Container(
              decoration: BoxDecoration(color: Colors.purple[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0,0.60),
                  ),
                ],
              ),
              width: 100,
              child: InkWell(
                onTap: (){
                  
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.build,size: 40,),
                      ),
                      Text('Machine',style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 20,bottom: 20,right: 5),
            child: Container(
              decoration: BoxDecoration(color: Colors.purple[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0,0.60),
                  ),
                ],
              ),
              width: 100,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.eco,size: 40,),
                  ),
                  Text('Crops',style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 20,bottom: 20,right: 5),
            child: Container(
              decoration: BoxDecoration(color: Colors.purple[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0,0.60),
                  ),
                ],
              ),
              width: 100,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.trending_up_outlined,size: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text('Trending Items',style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 20,bottom: 20,right: 5),
            child: Container(
              decoration: BoxDecoration(color: Colors.purple[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0,0.60),
                  ),
                ],
              ),
              width: 100,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.book,size: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text('Farming Books',style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}