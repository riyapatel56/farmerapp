
import 'package:farmer/customer/chome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TraderSignup extends StatefulWidget { 
  @override 
  _TraderSignupState createState() => _TraderSignupState(); 
} 
  
class _TraderSignupState extends State<TraderSignup> { 
  var _formKey = GlobalKey<FormState>(); 
  var isLoading = false; 
  
  void _submit() { 
    final isValid = _formKey.currentState.validate(); 
    if (!isValid) { 
      return; 
    } 
    _formKey.currentState.save(); 
  } 
  
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        backgroundColor: Colors.cyan[700],
        title: Text("Trader SignUp",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 1.4),),
      ), 
      backgroundColor: Colors.cyan[50],
      //body 
      body: SingleChildScrollView(
        child: Padding( 
          padding: const EdgeInsets.all(16.0), 
          //form 
          child: Form( 
            key: _formKey, 
            child: Column( 
              children: <Widget>[ 
                //styling 
                SizedBox( 
                  height: MediaQuery.of(context).size.width * 0.001, 
                ),
                //text input  
                TextFormField( 
                  decoration: InputDecoration(labelText: 'Name',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),), 
                  keyboardType: TextInputType.emailAddress, 
                  onFieldSubmitted: (value) {}, 
                  //obscureText: true, 
                  validator: (value) { 
                    if (value.isEmpty) { 
                      return 'Enter Name'; 
                    } 
                    return null; 
                  }, 
                ),
                
                SizedBox( 
                  height: MediaQuery.of(context).size.width * 0.07, 
                ),  
                TextFormField( 
                  decoration: InputDecoration(labelText: 'E-Mail',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),  
                  keyboardType: TextInputType.emailAddress, 
                  onFieldSubmitted: (value) { 
                    //Validator 
                  }, 
                  validator: (value) { 
                    if (value.isEmpty || 
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+") 
                            .hasMatch(value)) { 
                      return 'Enter a valid email!'; 
                    } 
                    return null; 
                  }, 
                ), 
                //box styling 
                SizedBox( 
                  height: MediaQuery.of(context).size.width * 0.07, 
                ), 
                //text input  
                TextFormField( 
                  decoration: InputDecoration(labelText: 'Mobile Number',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),  
                  keyboardType: TextInputType.emailAddress, 
                  onFieldSubmitted: (value) {}, 
                  //obscureText: true, 
                  validator: (value) { 
                    if (value.isEmpty) { 
                      return 'Enter a valid mobile number'; 
                    } 
                    return null; 
                  }, 
                ), 
                SizedBox( 
                  height: MediaQuery.of(context).size.width * 0.07, 
                ), 
                //text input  
                /*TextFormField( 
                  decoration: InputDecoration(labelText: 'State',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),  
                  keyboardType: TextInputType.emailAddress, 
                  onFieldSubmitted: (value) {}, 
                  //obscureText: true, 
                  validator: (value) { 
                    if (value.isEmpty) { 
                      return 'Enter a valid state'; 
                    } 
                    return null; 
                  }, 
                ), 
                SizedBox( 
                  height: MediaQuery.of(context).size.width * 0.07, 
                ),*/
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'State',style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),
                  ),
                ), 
                Container(
                  alignment: Alignment.centerLeft,
                  child: DropDownStates()
                ),
                //text input  
                TextFormField( 
                  decoration: InputDecoration(labelText: 'Password',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),), 
                  keyboardType: TextInputType.emailAddress, 
                  onFieldSubmitted: (value) {}, 
                  obscureText: true, 
                  validator: (value) { 
                    if (value.isEmpty) { 
                      return 'Enter a valid password!'; 
                    } 
                    return null; 
                  }, 
                ), 
                SizedBox( 
                  height: MediaQuery.of(context).size.width * 0.07, 
                ), 
                //text input  
                TextFormField( 
                  decoration: InputDecoration(labelText: 'Password',labelStyle: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 1.2,fontSize: 17),),  
                  keyboardType: TextInputType.emailAddress, 
                  onFieldSubmitted: (value) {}, 
                  obscureText: true, 
                  validator: (value) { 
                    if (value.isEmpty) { 
                      return 'Enter a valid password!'; 
                    } 
                    return null; 
                  }, 
                ),
                SizedBox( 
                  height: MediaQuery.of(context).size.width * 0.07, 
                ), 
                RaisedButton( 
                  color: Colors.cyan[700],
                  padding: EdgeInsets.symmetric( 
                    vertical: 10.0, 
                    horizontal: 15.0, 
                  ), 
                  child: Text( 
                    "Submit", 
                    style: GoogleFonts.openSans(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600,letterSpacing: 1.4),
                  ), 
                   onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Thome()));
                  }, 
                ) 
              ], 
            ), 
          ), 
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

