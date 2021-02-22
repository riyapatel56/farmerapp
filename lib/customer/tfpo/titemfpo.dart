//list of center how it looks
import 'package:farmer/customer/tfpo/tdetailpagefpo.dart';
import 'package:farmer/customer/tfpo/tfpo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';



class TFPOList extends StatelessWidget {
  
  final String id;
  final String location;
  final String address;
  final String img;
  final String phone;
  final String title;
  final String pname;
  final String since;
  final String mail;
  final String bio;
  final String fjoined;
  final String centercode;
  final String centercompany;

  const TFPOList({Key key, this.id, this.centercode, this.location, this.address, this.img, this.phone, this.title, this.pname, this.since, this.mail, this.bio, this.fjoined, this.centercompany}) : super(key: key); //show list of number of how many farmer have joined

  
  
  @override
  Widget build(BuildContext context) {

    final tfpo = Provider.of<Tfpo>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(TFPODetailPage.routeName,arguments: tfpo.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            /*image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(img),
            ),*/
            color: Color.fromRGBO(211,222,158,1),
            boxShadow: [BoxShadow(
              blurRadius: 2,
              color: Colors.orange[100],
            )],
          ),
          child: Column(
            children: [
            
              Container(
                color: Colors.lightBlue[900],
                child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 1.0,top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          '$title, $location ',
                          style: GoogleFonts.roboto(fontWeight: FontWeight.w500,color: Colors.white,letterSpacing: 1.0),
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        child: Text(
                          'Company - $centercompany',
                          style: GoogleFonts.roboto(fontSize: 13,color: Colors.lightBlue[200]),
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        child: Text(
                          'Phone No - $phone',
                          style: GoogleFonts.roboto(fontSize: 13,color: Colors.lightBlue[200]),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
              ),
              Container(
              height: MediaQuery.of(context).size.height * 0.201,
              decoration: BoxDecoration(
                image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(img),
              ),
              color: Colors.white,
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}