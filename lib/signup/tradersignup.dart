
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TraderSignup extends StatefulWidget {
  @override
  _TraderSignupState createState() => _TraderSignupState();
}

class _TraderSignupState extends State<TraderSignup> {
   TextEditingController name = TextEditingController();
  TextEditingController emailid = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController flatno = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController landmark = TextEditingController();
  TextEditingController town = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController blood = TextEditingController();
  TextEditingController ngo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan[800],
        child: ListView(
          children: <Widget>[
            Container(
              height: 70.0,
              color: Colors.cyan[800],
              child: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                child: Text(
                  'PLEASE FILL THE Details',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                          letterSpacing: 1.2,
                          // fontFamily: 'sans-serif-light',
                          color: Colors.white)),
                ),
              ),
            ),
            new Container(
              color: Colors.cyan[50],
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 0.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text(
                                  'Name',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Flexible(
                              child: new TextField(
                                controller: name,
                                decoration: const InputDecoration(
                                  hintText: "Enter Your Name",
                                ),

                                enabled: true,
                                //autofocus: !_status,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text('Email ID',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Flexible(
                              child: new TextField(
                                controller: emailid,
                                decoration: const InputDecoration(
                                    hintText: "Enter Email ID"),
                                enabled: true,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text('Mobile',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Flexible(
                              child: new TextField(
                                controller: mobile,
                                decoration: const InputDecoration(
                                    hintText: "Enter Mobile Number"),
                                enabled: true,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text('House No.',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Flexible(
                              child: new TextField(
                                controller: flatno,
                                decoration: const InputDecoration(
                                  hintText:
                                      "Enter Your flat no./house no./building",
                                ),
                                enabled: true,
                                // autofocus: !_status,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text('Landmark',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Flexible(
                              child: new TextField(
                                controller: landmark,
                                decoration: const InputDecoration(
                                  hintText: "e.g.near Apollo Hospital",
                                ),
                                enabled: true,
                                // autofocus: !_status,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text('Town',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Flexible(
                              child: new TextField(
                                controller: town,
                                decoration: const InputDecoration(
                                  hintText: "Town/City",
                                ),
                                enabled: true,
                                // autofocus: !_status,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: new Text('Pin Code',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child: Container(
                                child: new Text('State',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ),
                              flex: 2,
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: new TextField(
                                  controller: pincode,
                                  decoration: const InputDecoration(
                                      hintText: "Enter Pin Code"),
                                  enabled: true,
                                ),
                              ),
                              flex: 2,
                            ),
                            Flexible(
                              child: new TextField(
                                controller: state,
                                decoration: const InputDecoration(
                                    hintText: "Enter State"),
                                enabled: true,
                              ),
                              flex: 2,
                            ),
                          ],
                        )),
                    // !_status ? _getActionButtons() : new Container(),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text('Years Of Experience',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Flexible(
                              child: new TextField(
                                controller: town,
                                decoration: const InputDecoration(
                                  hintText: "",
                                ),
                                enabled: true,
                                // autofocus: !_status,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text('Enter Password',
                                 style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Flexible(
                              child: new TextField(
                                controller: blood,
                                decoration: const InputDecoration(
                                  hintText: "",
                                ),
                                enabled: true,
                                // autofocus: !_status,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text('Enter Password',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
                        child: new Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Flexible(
                              child: new TextField(
                                controller: blood,
                                decoration: const InputDecoration(
                                  hintText: "",
                                ),
                                enabled: true,
                                // autofocus: !_status,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20.0,
                    ),

                    // onTap: () {
                    //   Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => Confirmed(),
                    //   ));
                    // },
                    // onTap: () {
                    //   var uid = FirebaseAuth.instance.currentUser.uid;

                    //   FirebaseFirestore.instance
                    //       .collection("booking")
                    //       .doc(uid)
                    //       .set({
                    //     "name": name.value.text,
                    //     "email": emailid.value.text,
                    //     "event_name": event.type,
                    //     "event_id": event.id,
                    //     "mobile": mobile.value.text,
                    //     "flat no": flatno.value.text,
                    //     "Area": area.value.text,
                    //     "Landmark": landmark.value.text,
                    //     "Town": town.value.text,
                    //     "Pin Code": pincode.value.text,
                    //     "State": state.value.text
                    //   });
                    //   print(name.value.text);
                    // },
                    Center(
                      child: Container(
                        height: 55.0,
                        width: 250.0,
                        child: FlatButton(
                          shape: StadiumBorder(),
                          color: Colors.cyan[800],
                          onPressed: () {},
                          child: Text("Submit Your Details",
                            style: GoogleFonts.poppins(color: Colors.white, fontSize: 18.0)
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}