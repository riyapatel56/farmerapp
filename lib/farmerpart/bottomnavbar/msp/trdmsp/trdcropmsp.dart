import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Trdmspcrop with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String imgUrl;
  final String msp;


  Trdmspcrop({
    @required this.id, 
    this.category, 
    @required this.name, 
    @required this.imgUrl, 
    this.msp,

  });
}

class Trdmspcrops with ChangeNotifier{
  List<Trdmspcrop> _items =[
    Trdmspcrop(
      id: '1', 
      category: 'Organic', 
      name: 'Coffee', 
      imgUrl: 'assets/images/oc.jpg', 
      msp: '170',
    ),
    Trdmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Trdmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Trdmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Trdmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Trdmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Trdmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Trdmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Trdmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    
  ];

  List<Trdmspcrop>get items {
    return[..._items];
  }

  Trdmspcrop findbyId(String id){
    return _items.firstWhere((trdmc) => trdmc.id == id);
  }
}