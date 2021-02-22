import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Ttrdmspcrop with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String imgUrl;
  final String msp;


  Ttrdmspcrop({
    @required this.id, 
    this.category, 
    @required this.name, 
    @required this.imgUrl, 
    this.msp,

  });
}

class Ttrdmspcrops with ChangeNotifier{
  List<Ttrdmspcrop> _items =[
    Ttrdmspcrop(
      id: '1', 
      category: 'Organic', 
      name: 'Coffee', 
      imgUrl: 'assets/images/oc.jpg', 
      msp: '170',
    ),
    Ttrdmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Ttrdmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Ttrdmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Ttrdmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Ttrdmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Ttrdmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Ttrdmspcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Ttrdmspcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    
  ];

  List<Ttrdmspcrop>get items {
    return[..._items];
  }

  Ttrdmspcrop findbyId(String id){
    return _items.firstWhere((trdmc) => trdmc.id == id);
  }
}