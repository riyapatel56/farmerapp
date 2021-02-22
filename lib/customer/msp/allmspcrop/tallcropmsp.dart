import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Tmspallcrop with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String imgUrl;
  final String msp;


  Tmspallcrop({
    @required this.id, 
    this.category, 
    @required this.name, 
    @required this.imgUrl, 
    this.msp,

  });
}

class Tmspallcrops with ChangeNotifier{
  List<Tmspallcrop> _items =[
    Tmspallcrop(
      id: '1', 
      category: 'Organic', 
      name: 'Coffee', 
      imgUrl: 'assets/images/oc.jpg', 
      msp: '170',
    ),
    Tmspallcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Tmspallcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Tmspallcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Tmspallcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Tmspallcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Tmspallcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    Tmspallcrop(
      id: '2', 
      //category: 'Organic', 
      name: 'Almond', 
      imgUrl: 'assets/images/almond.jpg', 
      msp: '210',
    
    ),
    Tmspallcrop(
      id: '3', 
      //category: 'Organic', 
      name: 'Cotton', 
      imgUrl: 'assets/images/cotton.jpg', 
      msp: '80',
    
    ),
    
  ];

  List<Tmspallcrop>get items {
    return[..._items];
  }

  Tmspallcrop findbyId(String id){
    return _items.firstWhere((tmacp) => tmacp.id == id);
  }
}