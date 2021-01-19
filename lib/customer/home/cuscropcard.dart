import 'package:flutter/material.dart';

class CusCropCard extends StatelessWidget {

  final String title;
  final String image;
  final Function press;
  final Widget page;

  const CusCropCard({Key key, this.title, this.image, this.press, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(13),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      image,
                      height: 100,
                      width: 200,
                    ),
                    SizedBox(height: 8),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 20,fontFamily: 'Roboto'),
                    ),
                    FlatButton(
                      height: 25,
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
    );
  }
}