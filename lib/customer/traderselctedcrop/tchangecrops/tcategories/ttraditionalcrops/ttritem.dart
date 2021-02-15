
import 'package:farmer/customer/traderselctedcrop/tchangecrops/tcategories/ttraditionalcrops/ttraditional.dart';
import 'package:farmer/customer/traderselctedcrop/tchangecrops/tcategories/ttraditionalcrops/ttrdetail.dart';
import 'package:farmer/farmerpart/bottomnavbar/farmerjoinedcrops/changecrops/categories/traditionalcrops/traditional.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TTrdItem extends StatelessWidget {

  final String name;
  final String imgUrl;

  TTrdItem({
    this.name,
    this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {

    final ttrd = Provider.of<Ttraditional>(context);
    //final cart = Provider.of<Cart>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(TTrdDetailPage.routeName,arguments: ttrd.id);
      },
      child: FittedBox(
      fit: BoxFit.contain,
      child: ClipRRect(
        child: Padding(
          padding: EdgeInsets.all(0.015 * MediaQuery.of(context).size.height),
          child: Container(
            decoration: BoxDecoration(
              //border: Border.all(width: 1,color: Colors.green[800]),
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(0.030 * MediaQuery.of(context).size.height),
              boxShadow: [BoxShadow(color: Colors.purple,blurRadius: 5)],
            ),
            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.all(0.015 * MediaQuery.of(context).size.height),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
                    Container(
                      height: 0.175 * MediaQuery.of(context).size.height,
                      width: 0.300 * MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage(
                        imgUrl,
                      ))),
                    ),
                    SizedBox(height: 0.014 * MediaQuery.of(context).size.height),
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 0.031 * MediaQuery.of(context).size.height,fontFamily: 'Roboto',color: Colors.black87),
                    ),
                    SizedBox(height: 0.012 * MediaQuery.of(context).size.height),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0.01 * MediaQuery.of(context).size.height),
                      child: Container(
                        height: 0.055 * MediaQuery.of(context).size.height,
                        width: 0.16 * MediaQuery.of(context).size.height,
                        child: RaisedButton(
                          highlightColor: Colors.purple,
                          onPressed: () {
                          },
                          color: Colors.purple,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text('Select',
                            style: GoogleFonts.poppins(color: Colors.white,fontSize: 24,letterSpacing: .9,fontWeight: FontWeight.w500),
                            ),
                          ),
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
