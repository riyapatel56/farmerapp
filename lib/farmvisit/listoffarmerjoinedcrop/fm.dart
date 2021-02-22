
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Fvfarmer with ChangeNotifier{
  
  final String id;
  final String name;
  final String growing;
  final String since;
  final String address;
  final String rating;
  final String image;
  final String phoneno;
  //final Widget page;
  final String email;
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final String img5;
  final String img6;
  
  final String landAcre;

  Fvfarmer({this.img1, this.img2, this.img3, this.img4, this.img5, this.img6, this.id, this.landAcre, this.name, this.growing, this.since, this.address, this.rating, this.image, this.phoneno, this.email,});

  
}

class Fvfarmers with ChangeNotifier{
  List<Fvfarmer> _items =[
    Fvfarmer(
      id: '1',
      image: 'assets/images/p2.jpg',
      name: 'Umesh Shah',
      growing: 'Wheat',
      since: '2012',
      address: 'Jaipur, Rajasthan',
      rating: '4.2',
      phoneno: '9874563218',
      email: 'abc@gmail.com',
      landAcre: '1',
      img1: 'assets/images/fv1.jpg',
      img2: 'assets/images/fv2.jpg',
      img3: 'assets/images/fv3.jpg',
      img4: 'assets/images/fv4.jpg',
      img5: 'assets/images/fv5.jpg',
      img6: 'assets/images/fv6.jpg',
      
    ),
    Fvfarmer(
      id: '2',
      name: 'Yam Modi',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      address: 'Punjab',
      image: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      img1: 'assets/images/fv1.jpg',
      img2: 'assets/images/fv2.jpg',
      img3: 'assets/images/fv3.jpg',
      img4: 'assets/images/fv4.jpg',
      img5: 'assets/images/fv5.jpg',
      img6: 'assets/images/fv6.jpg',
    ),
    Fvfarmer(
      id: '3',
      image: 'assets/images/p2.jpg',
      name: 'Vicky Modi',
      growing: 'Wheat',
      since: '2012',
      address: 'Jaipur, Rajasthan',
      rating: '4.2',
      phoneno: '9874563218',
      email: 'abc@gmail.com',
      landAcre: '1',
      img1: 'assets/images/fv1.jpg',
      img2: 'assets/images/fv2.jpg',
      img3: 'assets/images/fv3.jpg',
      img4: 'assets/images/fv4.jpg',
      img5: 'assets/images/fv5.jpg',
      img6: 'assets/images/fv6.jpg',
    ),
    Fvfarmer(
      id: '4',
      name: 'Pulkit Samrat',
      growing: 'Paddy',
      since: '2004',
      phoneno: '1234567890',
      rating: '4.8',
      address: 'Punjab',
      image: 'assets/images/p2.jpg',
      email: 'abc@gmail.com',
      landAcre: '10',
      img1: 'assets/images/fv1.jpg',
      img2: 'assets/images/fv2.jpg',
      img3: 'assets/images/fv3.jpg',
      img4: 'assets/images/fv4.jpg',
      img5: 'assets/images/fv5.jpg',
      img6: 'assets/images/fv6.jpg',
    ),
    Fvfarmer(
      id: '5',
      image: 'assets/images/p2.jpg',
      name: 'Umesh Shah',
      growing: 'Wheat',
      since: '2012',
      address: 'Jaipur, Rajasthan',
      rating: '4.2',
      phoneno: '9874563218',
      email: 'abc@gmail.com',
      landAcre: '1',
      img1: 'assets/images/fv1.jpg',
      img2: 'assets/images/fv2.jpg',
      img3: 'assets/images/fv3.jpg',
      img4: 'assets/images/fv4.jpg',
      img5: 'assets/images/fv5.jpg',
      img6: 'assets/images/fv6.jpg',
    ),
    
    
  ];

  List<Fvfarmer>get items {
    return[..._items];
  }

  Fvfarmer findbyId(String id){
    return _items.firstWhere((fvf) => fvf.id == id);
  }
}
