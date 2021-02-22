
import 'package:farmer/customer/tfpo/tfpo.dart';
import 'package:farmer/customer/tfpo/titemfpo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class TFPOHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final tfpoData = Provider.of<Tfpos>(context);
    final tfpos = tfpoData.items;
    
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: GridView.builder(
        physics: ScrollPhysics(),
        itemCount: tfpos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 1.59),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(value: tfpos[i],
          child: TFPOList(
            title: tfpos[i].title,
            img: tfpos[i].img,
            location: tfpos[i].location,
            address: tfpos[i].address,
            phone: tfpos[i].phone,
            pname: tfpos[i].pname,
            since: tfpos[i].since,
            mail: tfpos[i].mail,
            bio: tfpos[i].bio,
            fjoined: tfpos[i].fjoined,
            centercode: tfpos[i].centercode,
            centercompany: tfpos[i].centercompany,
          ),
        ),
      ),
    );
  }
}

