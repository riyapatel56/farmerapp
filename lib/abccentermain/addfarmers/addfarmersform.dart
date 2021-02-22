import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddFarmerForm extends StatefulWidget {
  @override
  _AddFarmerFormState createState() => _AddFarmerFormState();
}

class _AddFarmerFormState extends State<AddFarmerForm> {
  TextEditingController name = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController add = TextEditingController();
  TextEditingController land = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController farmvisit = TextEditingController();
  TextEditingController income = TextEditingController();
  TextEditingController workers = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController growing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[100],
        child: ListView(
          children: <Widget>[
            Container(
              height: 70.0,
              color: Colors.orange[800],
              child: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                child: Text(
                  'Add Farmer',
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
              color: Colors.orange[50],
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                  height: 270.0,
                  color: Colors.white,
                  child: ImagePickerData(),
                ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
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
                                  hintText: "Enter Name",
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
                                new Text('Mail ID',
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
                                controller: mail,
                                decoration: const InputDecoration(
                                    hintText: "Enter Mail ID"),
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
                                new Text('Mobile Number',
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
                                controller: phone,
                                decoration: const InputDecoration(
                                  hintText:
                                  "Enter Mobile Number",
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
                                new Text('Farmer Address',
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
                                controller: add,
                                decoration: const InputDecoration(
                                  hintText: "Enter Address ",
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
                                new Text('Pincode',
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
                                controller: pincode,
                                decoration: const InputDecoration(
                                  hintText: "Enter Pincode",
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
                                new Text('State',
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
                                controller: state,
                                decoration: const InputDecoration(
                                  hintText: "Enter State",
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
                                new Text('Land Acre',
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
                                controller: land,
                                decoration: const InputDecoration(
                                  hintText: "Enter Land Acre"
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
                                new Text('Growing',
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
                                controller: growing,
                                decoration: const InputDecoration(
                                  hintText: "Enter Name Of Crops",
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
                                new Text('Enter Total Number OF Workers',
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
                                controller: workers,
                                decoration: const InputDecoration(
                                  hintText: "Enter Number",
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
                                new Text('Income Per Year',
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
                                controller: income,
                                decoration: const InputDecoration(
                                  hintText: "Enter Amount",
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
                                new Text('Is His Farm Available For Farm Visit',
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
                                controller: farmvisit,
                                decoration: const InputDecoration(
                                  hintText: "Answer in Yes/No",
                                ),
                                enabled: true,
                                // autofocus: !_status,
                              ),
                            ),
                          ],
                        )),
                    

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
                    //     "Pin Code": land.value.text,
                    //     "State": state.value.text
                    //   });
                    //   print(name.value.text);
                    // },
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.04),
                        child: Container(
                          height: 55.0,
                          width: 250.0,
                          child: FlatButton(
                            shape: StadiumBorder(),
                            color: Colors.orange[800],
                            onPressed: () {
                              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmerList()));
                            },
                            child: Text("Apply",
                              style: GoogleFonts.poppins(color: Colors.white, fontSize: 18.0)
                            )
                          ),
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

class ImagePickerData extends StatefulWidget {
  final List data;
  final int iitd;
  ImagePickerData({this.data, this.iitd});
  @override
  AttachmentState createState() => new AttachmentState();
}

class AttachmentState extends State<ImagePickerData> {
  File _image;

  @override
  Widget build(BuildContext context) {
    Future getCamera() async {
      var image = await ImagePicker.pickImage(source: ImageSource.camera);
      setState(() {
        _image = image;
      });
    }

    Future getGallery() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);
      setState(() {
        _image = image;
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 150.0,
          child: Center(
            child: _image == null
                ? Text('No image selected.')
                : Image.file(_image),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                      child: Container(
                        child: RaisedButton(
                          elevation: 4.0,
                          onPressed: () {
                            getGallery();
                          },
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFFf7418c),
                                  Color(0xFFfbab66),
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(80.0))
                            ),
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Picture From Gallery',
                                  style: TextStyle(fontSize: 15)
                                ),
                              ],
                            )
                          )
                        ),
                      ),
                    ),
                    RaisedButton(
                      elevation: 4.0,
                      onPressed: () {
                        getCamera();
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFFf7418c),
                                  Color(0xFFfbab66),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0))),
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('Take Picture',
                                  style: TextStyle(fontSize: 15)),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}