import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Orgmspcrop with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String imgUrl;
  final String msp;


  Orgmspcrop({
    @required this.id, 
    this.category, 
    @required this.name, 
    @required this.imgUrl, 
    this.msp,

  });
}

class Orgmspcrops with ChangeNotifier{
  List<Orgmspcrop> _items =[
    Orgmspcrop(
      id: '1', 
      category: 'Organic', 
      name: 'Coffee', 
      imgUrl: 'assets/images/oc.jpg', 
      msp: '170',
    ),
    Orgmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Orgmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Orgmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Orgmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Orgmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Orgmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Orgmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Orgmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    
  ];

  List<Orgmspcrop>get items {
    return[..._items];
  }

  Orgmspcrop findbyId(String id){
    return _items.firstWhere((orgmc) => orgmc.id == id);
  }
}