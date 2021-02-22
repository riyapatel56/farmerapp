import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fpo.dart';
import 'itemfpo.dart';


class FPOHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final fpoData = Provider.of<Fpos>(context);
    final fpos = fpoData.items;
    
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: GridView.builder(
        physics: ScrollPhysics(),
        itemCount: fpos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 1.59),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(value: fpos[i],
          child: FPOList(
            title: fpos[i].title,
            img: fpos[i].img,
            location: fpos[i].location,
            address: fpos[i].address,
            phone: fpos[i].phone,
            pname: fpos[i].pname,
            since: fpos[i].since,
            mail: fpos[i].mail,
            bio: fpos[i].bio,
            fjoined: fpos[i].fjoined,
            centercode: fpos[i].centercode,
            centercompany: fpos[i].centercompany,
          ),
        ),
      ),
    );
  }
}

