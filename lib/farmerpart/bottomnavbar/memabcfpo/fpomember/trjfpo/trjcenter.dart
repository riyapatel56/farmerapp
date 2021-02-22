import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Trjfpo with ChangeNotifier{
  
  final String id;
  final String name;
  final String trading;
  final String since;
  final String place;
  final String rating;
  final String imgUrl;
  final String phoneno;
  //final Widget page;
  final String email;
  final String landAcre;

  Trjfpo({this.id, this.landAcre, this.name, this.trading, this.since, this.place, this.rating, this.imgUrl, this.phoneno, this.email,});

  
}

class Trjfpos with ChangeNotifier{
  List<Trjfpo> _items =[
    Trjfpo(
      id: '1',
      name: 'Priyam Patel',
      trading: 'Maize',
      since: '2014',
      rating: '3.5',
      place: 'Gujarat',
      phoneno: '1234567890',
      imgUrl: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '5',
      
      //page: Mishal(),
    ),
    Trjfpo(
      id: '2',
      name: 'Sundar Parikh',
      trading: 'Cotton',
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

  List<Trjfpo>get items {
    return[..._items];
  }

  Trjfpo findbyPlace(String place){
    return _items.firstWhere((trjfpo) => trjfpo.place == place);
  }
}