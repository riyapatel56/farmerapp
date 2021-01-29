import 'package:farmer/farmerpart/shopping/categories/subcategories.dart/machine/homemachine.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
     // width: 1000,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 1,
        childAspectRatio: 0.85,
        children: [
          CategoryCard(
            id: '1',
            name: 'Machine',
            icon: Icons.agriculture,
            page: HomeMachine(),
          ),
          CategoryCard(
            id: '2',
            name: 'Crops',
            icon: Icons.grain,
          ),
          CategoryCard(
            id: '3',
            name: 'Trending Items',
            icon: Icons.trending_up,
          ),
          CategoryCard(
            id: '4',
            name: 'FarmBook',
            icon: Icons.book,
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {

  
  final String name;
  final String id;
  final IconData icon;
  final Widget page;

  const CategoryCard({Key key, this.name, this.page,this.id, this.icon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(0,0,87,1),),
                width: 120,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(icon,size: 40,color: Colors.white70,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(name,style: GoogleFonts.openSans(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white,),),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

/*Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 20,bottom: 20,right: 5),
            child: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(0,0,87,1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0,0.60),
                  ),
                ],
              ),
              width: 100,
              child: InkWell(
                onTap: (){
                  
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.build,size: 40,color: Colors.white70,),
                      ),
                      Text(name,style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white70,),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),*/