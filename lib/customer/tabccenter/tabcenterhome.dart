import 'package:farmer/customer/tabccenter/tcenter.dart';
import 'package:farmer/customer/tabccenter/tcenteritem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TABCCenterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final tcentrData = Provider.of<Tcenters>(context);
    final tcnts = tcentrData.items;
    
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: GridView.builder(
        physics: ScrollPhysics(),
        itemCount: tcnts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 1.67),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(value: tcnts[i],
          child: TCenterList(
            title: tcnts[i].title,
            img: tcnts[i].img,
            location: tcnts[i].location,
            address: tcnts[i].address,
            phone: tcnts[i].phone,
            pname: tcnts[i].pname,
            since: tcnts[i].since,
            mail: tcnts[i].mail,
            bio: tcnts[i].bio,
            fjoined: tcnts[i].fjoined,
            centercode: tcnts[i].centercode,
            centercompany: tcnts[i].centercompany,
          ),
        ),
      ),
    );
  }
}

