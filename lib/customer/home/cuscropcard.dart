import 'package:flutter/material.dart';

class CusCropCard extends StatelessWidget {

  final String title;
  final String image;
  final Function press;
  final Widget page;

  const CusCropCard({Key key, this.title, this.image, this.press, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.contain,
      child: ClipRRect(
        child: Padding(
          padding: EdgeInsets.all(0.010 * MediaQuery.of(context).size.height),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(0.020 * MediaQuery.of(context).size.height),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: EdgeInsets.all(0.020 * MediaQuery.of(context).size.height),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 0.008 * MediaQuery.of(context).size.height),
                      Image.asset(
                        image,
                        height: 0.135 * MediaQuery.of(context).size.height,
                        width: 0.200 * MediaQuery.of(context).size.height,
                      ),
                      SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 0.024 * MediaQuery.of(context).size.height,fontFamily: 'Roboto',color: Colors.black87),
                      ),
                      FlatButton(
                        height: 0.04 * MediaQuery.of(context).size.height,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page),
                        ),
                        color: Colors.purple,
                        child: Text('Select',
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}