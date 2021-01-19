import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Article1 extends StatefulWidget {
  @override
  _Article1State createState() => _Article1State();
}

class _Article1State extends State<Article1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('Article'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //1 container
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: double.infinity,
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
                        'Crops To Grow In Winter',
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
                          'assets/images/article.jpg',
                        ),
                      ),
                    ),

                    //text
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0,left: 10,bottom: 10,right: 10),
                      child: Text(
                        'Having a thriving vegetable garden doesn\'t have to end when summer does. With a little bit of planning, and preparation you can grow vegetables well into the winter months or even year round if you live in a warmer climate down south.Vegetables Eight of the best vegetables to grow in winter: \nKale - No self-respecting winter garden is complete without several varieties of hardy kale. In fact, as the temperature drops in late autumn, the flavor of kale improves. We grow kale two ways – as a mature crop for soups, sautés and chips and as a baby green for tender winter salads. ‘Winterbor’ is a beautiful and delicious kale that grows three feet tall with deeply curled blue-green leaves.  I also enjoy growing ‘Red Russian’, a classic variety with vivid purple stems and gray-green leaves. This is the variety we like to use for kale chips. ',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),

                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}