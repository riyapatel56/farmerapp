import 'package:flutter/material.dart';

class FmHome extends StatefulWidget {
  @override
  _FmHomeState createState() => _FmHomeState();
}

class _FmHomeState extends State<FmHome> {
  final texteditingcontroller = TextEditingController();
  bool validated = true;
  String errtext = "";
  
  void showalertdialog(){
    showDialog(context: context,
    builder: (context) {
      return StatefulBuilder(builder: (context, setState){
        return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: Text(
        "Add ",
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: texteditingcontroller,
            autofocus: true,
            style: TextStyle(
              fontSize: 20.0,
            ),
            decoration: InputDecoration(
              errorText: validated ? null : errtext,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){},
                  color: Colors.cyan[800],
                  child: Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Calibri",
                      color: Colors.white,
                     ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
      });
    }
  );
  }
  
  Widget mycard(String task){
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
            "$task",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          onLongPress: (){
            print("Should Get Deleted");
          },
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showalertdialog,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.cyan[800],
      ),
      appBar: AppBar(
        title: Text(
          "My Expenses",
          style: TextStyle(
            fontFamily: "Calibri",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.cyan[800],
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mycard("Bill Payed - Rs 5000"),
            mycard("Buyed \nMilk - 500 \nOrange - 100\nCucumber - 300"),
            mycard("Buyed Manure - 1000"),
          ],
        ),
      ),
    );
  }
}