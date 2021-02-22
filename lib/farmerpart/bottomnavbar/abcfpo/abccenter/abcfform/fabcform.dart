
import 'package:farmer/farmerpart/bottomnavbar/memabcfpo/abccentmember/abcmhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class FABCApplyForm extends StatefulWidget {
  @override
  _FABCApplyFormState createState() => _FABCApplyFormState();
}

class _FABCApplyFormState extends State<FABCApplyForm> {
  TextEditingController add = TextEditingController();
  TextEditingController land = TextEditingController();
  TextEditingController growing = TextEditingController();
  TextEditingController since = TextEditingController();
  TextEditingController money = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[50],
        child: ListView(
          children: <Widget>[
            Container(
              height: 70.0,
              color: Colors.purple[800],
              child: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                child: Text(
                  'Apply For ABC',
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
              color: Colors.purple[50],
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
                                  'Enter Your Address',
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
                                  hintText: "Enter Your Address, Pincode and State",
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
                                new Text('Land Area',
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
                                    hintText: "Enter Land Area"),
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
                                new Text('Crops You Are Growing / Trading',
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
                                  hintText:
                                      "Ex Wheat/Cotton/etc",
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
                                new Text('Since When You Are In This Field',
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
                                controller: since,
                                decoration: const InputDecoration(
                                  hintText: "Enter Year",
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
                                controller: money,
                                decoration: const InputDecoration(
                                  hintText: "Enter Amount",
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
                    //     "Pin Code": pincode.value.text,
                    //     "State": state.value.text
                    //   });
                    //   print(name.value.text);
                    // },*/
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.04),
                        child: Container(
                          height: 55.0,
                          width: 250.0,
                          child: FlatButton(
                            shape: StadiumBorder(),
                            color: Colors.purple[800],
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FABCMHome()));
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


class DropDownStates extends StatefulWidget {
  @override
  _DropDownStatesState createState() => _DropDownStatesState();
}

class _DropDownStatesState extends State<DropDownStates> {
  String _value;
  
    @override
    Widget build(BuildContext context) {
      return DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            child: Row(
                children: <Widget>[
                  Text(
                    'Andhra Pradesh',
                    style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                  ),
                ],
            ),
            value: '1',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Arunachal Pradesh',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '2',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Assam',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '3',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Bihar',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '4',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Chhattisgarh',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '5',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Goa',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '6',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Gujarat',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '7',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Haryana',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '8',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Himachal Pradesh',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '9',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Jammu and Kashmir',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '10',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Jharkhand',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '11',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Karnataka',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '12',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Kerala',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '13',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Madhya Pradesh',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '14',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Maharshta',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '15',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Manipur',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '16',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Meghalaya',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '17',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Mizoram',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '18',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Nagaland',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '19',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Odisha',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '20',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Punjab',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '21',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Rajasthan',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '22',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Sikkim',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '23',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Tamil Nadu',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '24',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Telangana',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '25',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Tripura',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '26',
          ),

          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Uttarakhand',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '27',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Uttar Pradesh',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '28',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'West Bengal',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '29',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Andaman and Nicobar Islands',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '30',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Chandigarh',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '31',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Dadra and Nagar Haveli',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '32',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Daman and Diu',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '33',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Delhi',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '34',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Lakshadweep',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '35',
          ),
          DropdownMenuItem<String>(
            child: Row(
              children: <Widget>[
                Text(
                  'Puducherry',
                  style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.0,fontSize: 14),
                ),
              ],
            ),
            value: '36',
          ),
        ],
        isExpanded: false,
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        hint: Padding(
          padding: const EdgeInsets.only(top: 8.0,bottom: 8),
          child: Text(
            'Select State',
            style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w400,letterSpacing: 1.2,fontSize: 14),
          ),
        ),
        value: _value,
        underline: Container(
          alignment: Alignment.centerLeft,
          height: 24,
          width: 210,
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black)),
          ),
        ),
        style: TextStyle(
          fontSize: 19,
          color: Colors.black,
        ),
        iconEnabledColor: Color.fromRGBO(0,0,0,1),
  //        iconDisabledColor: Colors.grey,
        iconSize: 29,
      );
    }
  }