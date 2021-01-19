import 'package:farmer/customer/traderselectedfarmer/tsflist.dart';
import 'package:farmer/farmerpart/listoffarmerjoinedcrop/listfarmerhome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TraderSelectCropHome extends StatefulWidget {
  @override
  _TraderSelectCropHomeState createState() => _TraderSelectCropHomeState();
}

class _TraderSelectCropHomeState extends State<TraderSelectCropHome> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .35,
            width: double.infinity,//here the height of the container is 45% of our total height
            decoration: BoxDecoration(
              color: Colors.lightGreen[500],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/fs1.jpg'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top :MediaQuery.of(context).size.height*0.1,bottom: MediaQuery.of(context).size.height*0.1),
                      child: Text(
                        "Selected \nCrops",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 3.2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Cotton",
                          title1: 'Organic Crop',
                          image: "assets/images/cot.jpg",
                          press: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TraderSelectedFarmerList()));
                          },
                        ),
                        CategoryCard(
                          title: "Lime",
                          title1: 'Traditional Crop',
                          image: "assets/images/lime.jpg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Cotton",
                          title1: 'Organic Crop',
                          image: "assets/images/cot.jpg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Lime",
                          title1: 'Traditional Crop',
                          image: "assets/images/lime.jpg",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final Function press;
  final String title1;
  
  const CategoryCard({
    Key key, 
    this.title, this.image, this.press, this.title1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
          child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blueGrey[100],
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0),bottomRight: Radius.circular(50.0),topLeft: Radius.circular(50.0),topRight: Radius.circular(0.0)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top :7.0),
                        child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 20,),
                        ),
                      ),
                      Text(
                      title1,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 15,color: Colors.black45),
                  ),
                    ],
                  ),
                ),
                Spacer(),
                Image.asset(
                    image,
                    height: 120,
                    width: 200,
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