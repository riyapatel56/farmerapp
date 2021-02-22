import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Tfpo with ChangeNotifier{
  
  final String id;
  final String location;
  final String address;
  final String img;
  final String phone;
  final String title;
  final String pname;
  final String since;
  final String mail;
  final String bio;
  final String fjoined;
  final String centercode;
  final String centercompany;

  Tfpo({this.centercode, this.id, this.centercompany, this.location, this.address, this.img, this.phone, this.title, this.pname, this.since, this.mail, this.bio, this.fjoined});
  
}

class Tfpos with ChangeNotifier{
  List<Tfpo> _items =[
    Tfpo(
      id: '1',
      img: 'assets/images/fpo.jpg',
      title: 'FPO Center',
      phone: '1234567890',
      location: 'Mehsana',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Mehsana, Gujarat ',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'GJFXC3DF',
      centercompany: 'BioTech',
    ),
    Tfpo(
      id: '2',
      img: 'assets/images/fpo.jpg',
      title: 'FPO Center',
      phone: '1234567890',
      location: 'Jaipur',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Jaipur, Rajasthan',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'PSFXC5QR',
      centercompany: 'AgriSun',
    ),
    Tfpo(
      id: '3',
      img: 'assets/images/fpo.jpg',
      title: 'FPO Center',
      phone: '1234567890',
      location: 'Unjha',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Vasai, Gujarat ',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'GJFXC3DF',
      centercompany: 'Pharma',
    ),
    Tfpo(
      id: '4',
      img: 'assets/images/fpo.jpg',
      title: 'FPO Center',
      phone: '1234567890',
      location: 'Udaipur',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Jaipur, Rajasthan',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'PSFXC5QR',
      centercompany: 'BioTech',
    ),
    Tfpo(
      id: '5',
      img: 'assets/images/fpo.jpg',
      title: 'FPO Center',
      phone: '1234567890',
      location: 'Vasai',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Vasai, Gujarat ',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'GJFXC3DF',
      centercompany: 'BioTech',
    ),
    Tfpo(
      id: '6',
      img: 'assets/images/fpo.jpg',
      title: 'FPO Center',
      phone: '1234567890',
      location: 'Jaipur',
      pname: 'Jignesh Mehta',
      since: '2014',
      address: '3, shivam complex near vasai village, Jaipur, Rajasthan',
      mail: 'abc@gmail.com',
      bio: 'Hardwork Leads To Success',
      fjoined: '4',
      centercode: 'PSFXC5QR',
      centercompany: 'BioTech',
    ),
    
    
  ];

  List<Tfpo>get items {
    return[..._items];
  }

  Tfpo findbyId(String id){
    return _items.firstWhere((tfpo) => tfpo.id == id);
  }

  

}