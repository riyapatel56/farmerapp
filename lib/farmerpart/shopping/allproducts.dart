import 'package:farmer/farmerpart/shopping/products.dart';
import 'package:farmer/farmerpart/shopping/pdt_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;

    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: pdts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: pdts[i],
      child: PdtItem(name: pdts[i].name,imageUrl: pdts[i].imgUrl,),
      ),
    );
  }
}