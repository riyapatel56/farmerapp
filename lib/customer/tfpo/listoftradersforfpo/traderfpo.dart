import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Traderfpo with ChangeNotifier{
  
  final String place;
  final String name;
  final String growing;
  final String since;
  final String id;
  final String rating;
  final String imgUrl;
  final String phoneno;
  //final Widget page;
  final String email;
  final String landAcre;

  Traderfpo({this.place, this.landAcre, this.name, this.growing, this.since, this.id, this.rating, this.imgUrl, this.phoneno, this.email,});

  
}

class Traderfpos with ChangeNotifier{
  List<Traderfpo> _items =[
    Traderfpo(
      id: '1',
      name: 'Priyam Patel',
      growing: 'Wheat',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Traderfpo(
      id: '2',
      name: 'Sundar Parikh',
      growing: 'Cotton',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      place: 'Punjab',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      // page: Shyam(),
    ),
    
    
  ];

  List<Traderfpo>get items {
    return[..._items];
  }

  Traderfpo findbyPlace(String place){
    return _items.firstWhere((tfpo) => tfpo.place == place);
  }
}