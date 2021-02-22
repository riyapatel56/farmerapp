
import 'package:farmer/abccentermain/applyabcfpoform.dart';
import 'package:farmer/abccentermain/createfpoform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//abc fpo
class CenterAboutInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'About ',
            
            style: GoogleFonts.openSans(color: Colors.orange[900],fontWeight: FontWeight.w600,letterSpacing: 1.4),
            
          ),
          
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 190,
              width: double.infinity,
              child: Image.asset('assets/images/agriculturecenter.jpg',fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'ABC Center',
                  style: GoogleFonts.roboto(color: Colors.orange[900],fontSize: 25,fontWeight: FontWeight.w600,letterSpacing: 1.2)
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Agri-Business Centres are commercial units of agri-ventures established by trained agriculture professionals. Such ventures may include maintenance and custom hiring of farm equipment, sale of inputs and other services in agriculture and allied areas, including post-harvest management and market linkages for income generation and entrepreneurship development. The scheme covers full financial support for training and handholding, provision of loan and credit-linked back-ended composite subsidy.',
                  style: GoogleFonts.openSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '• consultancy services\n• Soil and water quality cum inputs testing laboratories (with Atomic Absorption Spectrophotometers) \n• Pest surveillance, diagnostic and control services\n• Maintenance, repairs, and custom hiring of agricultural implements and machinery including micro-irrigation systems (sprinkler and drip)\n• Agri Service Centres including the three activities mentioned above (GroupActivity).\n• Seed Processing Units \n• Micro-propagation through Plant Tissue Culture Labs and Hardening Units',
                  style: GoogleFonts.openSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)
                )
              ),
            ),


            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 14.0,bottom: 25),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.orange[900])),
                  child: FlatButton(
                    color: Colors.orange[100],
                    onPressed: () {  
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApplyForm()));
                    },
                    child: Text(
                      'Create ABC',
                      style: GoogleFonts.openSans(fontSize: 22,color: Colors.orange[900],fontWeight: FontWeight.w600,letterSpacing: 1.4),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 2,color: Colors.grey,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About FPO',
                  style: GoogleFonts.roboto(color: Colors.orange[900],fontSize: 25,fontWeight: FontWeight.w600,letterSpacing: 1.2)
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Image.asset('assets/images/fpo.jpg'),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'The objectives of the FPO scheme are listed below: \n● To build a sustainable agriculture sector by promoting and supporting Farmer Producer Organisations, that enables farmers to improve production and productivity in the state.\n● To provide support for the promotion of Farmer Producer Organisations through the qualified Resource Institutions (RIs).\n● To promote economically viable and self-governing Farmer Producer Organisations.\n● To provide the required assistance and resources such as technical knowledge, inputs, financial resources, and infrastructure to strengthen the FPOs.\n● To enable farmers in accessing the markets through their FPOs, both as buyers and sellers.\n● To create a policy environment for investments in FPOs to leverage their production and marketing strength.',
                  style: GoogleFonts.openSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'An FPO, formed by a group of farm producers, is a registered body with producers as shareholders in the organisation. It deals with business activities related to the farm produce and it works for the benefit of the member producers.',
                  style: GoogleFonts.openSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)
                )
              ),
            ),
            
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 14.0,bottom: 14),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.orange[900])),
                  child: FlatButton(
                    color: Colors.orange[100],
                    onPressed: () {  
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateFPO()));
                    },
                    child: Text(
                      'Create FPO',
                      style: GoogleFonts.openSans(fontSize: 22,color: Colors.orange[900],fontWeight: FontWeight.w600,letterSpacing: 1.4),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}