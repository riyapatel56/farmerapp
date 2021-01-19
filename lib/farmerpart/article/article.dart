import 'package:farmer/farmerpart/article/articlecard.dart';
import 'package:farmer/farmerpart/article/readmore/article1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Article extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  final articleData = Provider.of<Articles>(context);
  final arts = articleData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Article'),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: arts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 0.62),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(value: arts[i],
      child: ArtItem(
        title: arts[i].title,
        imgUrl: arts[i].imgUrl,
        description: arts[i].descriptionhalf,
        id: arts[i].id,
        //price: trds[i].price,
      ),
      ),
    ),
    );
  }
}

class ArtItem extends StatelessWidget {

  final String id;
  final String title;
  final String imgUrl;
  final String description;

  const ArtItem({Key key, this.id, this.title, this.imgUrl, this.description}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [

            //1 container
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    blurRadius: 3,
                    offset: Offset(0, 0.72),
                    color: Colors.grey,
                  )],
                ),
                child: Column(
                  children: [

                    //title
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    //image
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: Image.asset(
                          imgUrl,
                        ),
                      ),
                    ),

                    //text
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0,left: 10,bottom: 10,right: 10),
                      child: Text(
                        description,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 12.0,bottom: 5),
                      child: Container(
                        color: Colors.purple,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Article1()));
                          },
                          child: Text(
                            'Continue Reading',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            

          ],
        ),
    );
  }
}

