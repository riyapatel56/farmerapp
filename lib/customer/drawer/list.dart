
import 'package:flutter/material.dart';

class Buyers extends StatefulWidget {
  @override
  _BuyersState createState() => _BuyersState();
}

class _BuyersState extends State<Buyers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer List'),
        backgroundColor: Colors.brown,
      ),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top:18.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Text('Umesh Shah ',style: TextStyle(fontSize: 18),),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top:23.0),
                    child: Icon(Icons.phone),
                  ),
                  onTap: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Umeshs()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top:18.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Text('Mahish Prajapati ',style: TextStyle(fontSize: 18),),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top:23.0),
                    child: Icon(Icons.phone),
                  ),
                  onTap: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mahish()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 7,offset: Offset(2.0,2.0))]),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top:18.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/l1.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Text('Mitesh Shah ',style: TextStyle(fontSize: 18),),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top:23.0),
                    child: Icon(Icons.phone),
                  ),
                  onTap: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mitesh()));
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}