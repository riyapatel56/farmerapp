import 'package:farmer/customer/msp/allmspcrop/tallcropmsp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TMSPAllCropsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final mspallcropData = Provider.of<Tmspallcrops>(context);
    final macps = mspallcropData.items;

    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: macps.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 4.12),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: macps[i],
      child: TMSPACItem(name: macps[i].name,imageUrl: macps[i].imgUrl,msp: macps[i].msp,),
      ),
    );
  }
}

class TMSPACItem extends StatelessWidget {

  final String name;
  final String imageUrl;
  final String msp;

  TMSPACItem({
    this.name,
    this.imageUrl, this.msp,
  });

 @override
  Widget build(BuildContext context) {


    //final macp = Provider.of<Mspallcrop>(context);
    //final cart = Provider.of<Cart>(context);

    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushNamed(MacDetailPage.routeName,arguments: macp.id);
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.015 * MediaQuery.of(context).size.height,top: 0.007 * MediaQuery.of(context).size.height,left: 0.015 * MediaQuery.of(context).size.height,right: 0.015 * MediaQuery.of(context).size.height),
        child: Container(
          decoration: BoxDecoration(
            //border: Border.all(width: 1,color: Colors.green[800]),
            color: Colors.brown[100],
            //borderRadius: BorderRadius.circular(0.030 * MediaQuery.of(context).size.height),
            boxShadow: [BoxShadow(offset: Offset.zero)],
          ),
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.all(0.015 * MediaQuery.of(context).size.height),
              child: Row(
                children: <Widget>[
                  SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
                  Container(
                    height: 0.175 * MediaQuery.of(context).size.height,
                    width: 0.10 * MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                    image: AssetImage(
                      imageUrl,
                    ))),
                  ),
                  SizedBox(width: 0.017 * MediaQuery.of(context).size.height),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(fontSize: 0.025 * MediaQuery.of(context).size.height,color: Colors.black87),
                  ),
                  SizedBox(width: 0.015 * MediaQuery.of(context).size.width),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 0.01 * MediaQuery.of(context).size.height),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '$msp Rs',
                              style: GoogleFonts.openSans(color: Colors.black,fontSize: 21,fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Per Quintel',
                              style: GoogleFonts.openSans(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 0.035 * MediaQuery.of(context).size.width),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}