import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CropCard extends StatelessWidget {

  final String title;
  final String image;
  final Function press;
  final Widget page;

  const CropCard({Key key, this.title, this.image, this.press, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FittedBox(
      fit: BoxFit.contain,
      child: ClipRRect(
        child: Padding(
          padding: EdgeInsets.all(0.015 * MediaQuery.of(context).size.height),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.green[800]),
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(0.020 * MediaQuery.of(context).size.height),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: EdgeInsets.all(0.015 * MediaQuery.of(context).size.height),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 0.008 * MediaQuery.of(context).size.height),
                      Container(
                        height: 0.175 * MediaQuery.of(context).size.height,
                        width: 0.300 * MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage(
                          image,
                        ))),
                      ),
                      SizedBox(height: 0.014 * MediaQuery.of(context).size.height),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 0.031 * MediaQuery.of(context).size.height,fontFamily: 'Roboto',color: Colors.black87),
                      ),
                      SizedBox(height: 0.012 * MediaQuery.of(context).size.height),
                      Padding(
                        padding: EdgeInsets.only(bottom: 0.01 * MediaQuery.of(context).size.height),
                        child: FlatButton(
                          highlightColor: Colors.purple,
                          height: 0.055 * MediaQuery.of(context).size.height,
                          minWidth: 0.14 * MediaQuery.of(context).size.height,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => page),
                          ),
                          color: Colors.purple,
                          child: Text('Join',
                          style: GoogleFonts.poppins(color: Colors.white,fontSize: 24,letterSpacing: 1.2,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}