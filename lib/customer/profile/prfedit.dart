
import 'package:farmer/customer/profile/prf.dart';
import 'package:flutter/material.dart';

class TraderProfileEdit extends StatefulWidget {
  @override
  _TraderProfileEditState createState() => _TraderProfileEditState();
}

class _TraderProfileEditState extends State<TraderProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Profile Page'),backgroundColor: Colors.brown,),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      height: 600.0,
                      width: 380.0,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 25.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown[50],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: TextField(
                            autocorrect: false,
                            autofocus: false,
                            style: TextStyle(
                              fontSize: 20.0,
                              ),
                          decoration: InputDecoration(
                            hintText: "Enter Name",
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(15.0),
                          ),
                          ),
                          ),
                          TextField(
                            autocorrect: false,
                            autofocus: false,
                            style: TextStyle(
                              fontSize: 20.0,
                              ),
                            decoration: InputDecoration(
                            hintText: "Enter E-mail",
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(15.0),
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              //obscureText: true,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                            decoration: InputDecoration(
                              hintText: "Enter Phone Number",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              //obscureText: true,
                              style: TextStyle(
                                fontSize: 20.0,
                                ),
                            decoration: InputDecoration(
                              hintText: "Intrested In Buying ",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                            ),
                          ),
                          Container(
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/p1.jpg'))
                  ),
                ),
                          Padding(
                            padding: const EdgeInsets.only(top :28.0),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderProfileScreen()));
                              },
                              minWidth: 250.0,
                              splashColor: Colors.brown[600],
                              color: Colors.brown[500],
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,

                                ),
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ],
            ),
        ],
      ),
      
    );
  }
}

