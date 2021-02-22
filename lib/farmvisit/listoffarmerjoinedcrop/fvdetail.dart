import 'package:farmer/farmvisit/listoffarmerjoinedcrop/fm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
//import 'package:full_screen_image/full_screen_image.dart';
//import 'package:full_screen_image/full_screen_image.dart';



class FvfDetailPage extends StatefulWidget {

  static const routeName = '/fvfarmer-detail';

  @override
  _FvfDetailPageState createState() => _FvfDetailPageState();
}

class _FvfDetailPageState extends State<FvfDetailPage> 
  with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final fvfarmerId = ModalRoute.of(context).settings.arguments as String;
    final loadedFvf = Provider.of<Fvfarmers>(context).findbyId(fvfarmerId);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        elevation: 0,
        title: Text(loadedFvf.name,style: GoogleFonts.openSans(),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top:0.0,right: 25),
            child: Row(
              children: [
                Icon(Icons.star,size: 18,),
                SizedBox(width: 4,),
                Text(loadedFvf.rating, style: GoogleFonts.openSans(color: Colors.white),),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.redAccent[700],
      body: SingleChildScrollView(
        child: Stack(
          //fit: StackFit.expand,
          children: [
          Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.height * -0.090,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.180,
                          width: MediaQuery.of(context).size.height * 0.400,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.lightGreen[800]),
                            image: DecorationImage(
                              image: AssetImage(loadedFvf.image),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 1.000,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.018),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Time Is Precious Waste It Wisely...!',
                          style: GoogleFonts.openSans(color: Colors.black87,fontSize: MediaQuery.of(context).size.height * 0.02,letterSpacing: 1.0),
                        ),
                      ),
                      
                      Padding(
                padding: const EdgeInsets.only(top:18,bottom: 20),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(226,226,226,1)
                  ),
                  child: TabBar(
                    controller: _tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      color: Colors.lightGreen[400]
                    ),
                    labelColor: Color.fromRGBO(0,0,87,1),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Personal Details',
                      ),

                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Farm Images',
                      ),
                    ],
                  ),
                ),
              ),

                      Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // first tab bar view widget 
                    SingleChildScrollView(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.green[50],
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Profile',
                              style: GoogleFonts.openSans(fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: 1,color: Colors.green[900]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Name',
                            style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedFvf.name,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Mobile Number',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedFvf.phoneno,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Mail ID',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedFvf.email,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Growing',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedFvf.growing,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Growing Since',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedFvf.since,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'From',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedFvf.address,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 12),
                        child: Text(
                          'Acres of Land ',
                          style: GoogleFonts.openSans(fontSize: 17,fontWeight: FontWeight.w600,letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,left: 12),
                        child: Text(
                          loadedFvf.landAcre,
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1,color: Colors.grey[600]),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          height: MediaQuery.of(context).size.height * 0.01,
                          color: Colors.grey,
                        ),
                      ),

                          ],
                        ),
                      ),
                    ),

                    
                    
                    // second tab bar view widget
                    SingleChildScrollView(
                      child: Column(
                        children: [

                          
                          
                          //1 row
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () async {
                                    await showDialog(context: context,builder: (_) => ImageDialog1());
                                  },
                                  child: Container(
                                    height: 120,
                                    //width: 60,
                                    child: Image.asset(loadedFvf.img1,fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              

                              SizedBox(width: 8,),

                              Expanded(
                                child: GestureDetector(
                                  onTap: () async {
                                    await showDialog(context: context,builder: (_) => ImageDialog2());
                                  },
                                  child: Container(
                                    height: 120,
                                    //width: 110,
                                    child: Image.asset(loadedFvf.img2,fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //2 row
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () async {
                                      await showDialog(context: context,builder: (_) => ImageDialog3());
                                    },
                                    child: Container(
                                      height: 120,
                                      //width: 60,
                                      child: Image.asset(loadedFvf.img3,fit: BoxFit.cover),
                                    ),
                                  ),
                                ),

                                SizedBox(width: 8,),

                                Expanded(
                                  child: GestureDetector(
                                    onTap: () async {
                                      await showDialog(context: context,builder: (_) => ImageDialog4());
                                    },
                                    child: Container(
                                      height: 120,
                                      //width: 110,
                                      child: Image.asset(loadedFvf.img4,fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //3 row
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () async {
                                      await showDialog(context: context,builder: (_) => ImageDialog5());
                                    },
                                    child: Container(
                                      height: 120,
                                      //width: 60,
                                      child: Image.asset(loadedFvf.img5,fit: BoxFit.cover),
                                    ),
                                  ),
                                ),

                                SizedBox(width: 8,),

                                Expanded(
                                  child: GestureDetector(
                                    onTap: () async {
                                      await showDialog(context: context,builder: (_) => ImageDialog6());
                                    },
                                    child: Container(
                                      height: 120,
                                      //width: 110,
                                      child: Image.asset(loadedFvf.img6,fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),

                  ],
                ),
              ),

                    ],
                  ),
                ),
              ),
            ],
          ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },child: Icon(Icons.call),backgroundColor: Colors.redAccent[700],),
    );
  }
}

class ImageDialog1 extends StatefulWidget {

  @override
  _ImageDialog1State createState() => _ImageDialog1State();
}

class _ImageDialog1State extends State<ImageDialog1> {
  @override
  Widget build(BuildContext context) {

    return Dialog(
      child: Container(
        width: 500,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/fv1.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}

class ImageDialog2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 500,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/fv2.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}

class ImageDialog3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 500,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/fv3.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}

class ImageDialog4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 500,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/fv4.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}

class ImageDialog5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 500,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/fv5.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}

class ImageDialog6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 500,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/fv6.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}