import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Torgmspcrop with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String imgUrl;
  final String msp;


  Torgmspcrop({
    @required this.id, 
    this.category, 
    @required this.name, 
    @required this.imgUrl, 
    this.msp,

  });
}

class Torgmspcrops with ChangeNotifier{
  List<Torgmspcrop> _items =[
    Torgmspcrop(
      id: '1', 
      category: 'Organic', 
      name: 'Coffee', 
      imgUrl: 'assets/images/oc.jpg', 
      msp: '170',
    ),
    Torgmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Torgmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Torgmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Torgmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Torgmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Torgmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Torgmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Torgmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    
  ];

  List<Torgmspcrop>get items {
    return[..._items];
  }

  Torgmspcrop findbyId(String id){
    return _items.firstWhere((orgmc) => orgmc.id == id);
  }
}