import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product({
    @required this.id, 
    @required this.category, 
    @required this.name, 
    @required this.description, 
    @required this.imgUrl, 
    @required this.price});
}

class Products with ChangeNotifier{
  List<Product> _items =[
    Product(
      id: '1', 
      category: 'Machine', 
      name: 'Harvesting Machine', 
      description: 'The modern combine harvester, or simply combine, is a versatile machine designed to efficiently harvest a variety of grain crops. The name derives from its combining four separate harvesting operations—reaping, threshing, gathering and winnowing—into a single process. Among the crops harvested with a combine are wheat, rice, oats, rye, barley, corn (maize), sorghum, soybeans, flax (linseed), sunflowers and canola. ',
      imgUrl: 'assets/images/mac.jpg', 
      price: 20000,
    ),
    Product(
      id: '2', 
      category: 'book', 
      name: 'Farm Book', 
      description: 'Manure is organic matter that is used as organic fertilizer in agriculture. Most manure consists of animal feces; other sources include compost and green manure. Manures contribute to the fertility of soil by adding organic matter and nutrients, such as nitrogen, that are utilised by bacteria, fungi and other organisms in the soil. Higher organisms then feed on the fungi and bacteria in a chain of life that comprises the soil food web.',
      imgUrl: 'assets/images/farmbook.jpg', 
      price: 150,
    ),
    Product(
      id: '3', 
      category: 'Manure', 
      name: 'Manure', 
      description: 'Manure is organic matter that is used as organic fertilizer in agriculture. Most manure consists of animal feces; other sources include compost and green manure. Manures contribute to the fertility of soil by adding organic matter and nutrients, such as nitrogen, that are utilised by bacteria, fungi and other organisms in the soil. Higher organisms then feed on the fungi and bacteria in a chain of life that comprises the soil food web.',
      imgUrl: 'assets/images/h2.jpg', 
      price: 150,
    ),
    Product(
      id: '4', 
      category: "Book", 
      name: 'Tomato Seeds', 
      description: 'The tomato is the edible berry of the plant Solanum lycopersicum,[1][2] commonly known as a tomato plant. The species originated in western South America and Central America.[2][3] The Nahuatl (the language used by the Aztecs) word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived.Its domestication and use as a cultivated food may have originated with the indigenous peoples of Mexico.',
      imgUrl: 'assets/images/h1.jpg', 
      price: 250,
    ),
    
  ];

  List<Product>get items {
    return[..._items];
  }

  Product findbyId(String id){
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}