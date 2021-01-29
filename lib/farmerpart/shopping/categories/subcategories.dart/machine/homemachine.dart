import 'package:farmer/farmerpart/shopping/cart/cart.dart';
import 'package:farmer/farmerpart/shopping/categories/subcategories.dart/machine/machinecard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeMachine extends StatefulWidget {
  @override
  _HomeMachineState createState() => _HomeMachineState();
}

class _HomeMachineState extends State<HomeMachine> {
  @override
  Widget build(BuildContext context) {

    final machineData = Provider.of<Machines>(context);
    final macs = machineData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Machine',
          style: GoogleFonts.openSans(letterSpacing: 1.2),
        ),
        backgroundColor: Colors.green[800],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: macs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: macs[i],
      child: MachineList(name: macs[i].name,imgUrl: macs[i].imgUrl,),
      ),
    ),
    );
  }
}

class MachineList extends StatelessWidget {

  final String name;
  final String imgUrl;

  MachineList({
    this.name,
    this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {

    final pdt = Provider.of<Machine>(context);
    final cart = Provider.of<Cart>(context);

    return GestureDetector(
      onTap: () {
        //Navigator.of(context).pushNamed(DetailPage.routeName,arguments: pdt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.asset(imgUrl),
          footer: GridTileBar(
            title: Text(name),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: (){
                //SHow item added to cart
                Scaffold.of(context).showSnackBar(SnackBar(
                  duration: Duration(seconds: 3),
                  content: Text('Item Added to Cart'),
                ));
                cart.addItem(pdt.id, pdt.name, pdt.price);
              },
            ),
            backgroundColor: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}
