import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Article with ChangeNotifier{
  final String id;
  final String title;
  final String imgUrl;
  final String descriptionhalf;

  Article({
    @required this.id,
    @required this.imgUrl,
    @required this.title,  
    @required this.descriptionhalf,
    });
}

class Articles with ChangeNotifier{
  List<Article> _items =[
    Article(
      id: '1', 
      title: 'Crops To Grow In Winter', 
      imgUrl: 'assets/images/article.jpg', 
      descriptionhalf: 'Having a thriving vegetable garden doesn\'t have to end when summer does. With a little bit of planning, and preparation you can grow vegetables well into the winter months or even year round if you live in a warmer climate down south.Vegetables .....',
    ),
    Article(
      id: '2', 
      title: 'Machines For Farming',
      imgUrl: 'assets/images/article2.jpg',
      descriptionhalf: 'The most common types of equipment and machinery used on farms include tractors, balers, combines, plows, mowers, planters and sprayers. Farming is no longer a small scale production.....',
    ),
    
  ];

  List<Article>get items {
    return[..._items];
  }

  Article findbyId(String id){
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}