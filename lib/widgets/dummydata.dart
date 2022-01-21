import 'package:onnfood/models/categories.dart';
import 'package:onnfood/models/product.dart';

const dummyCategories = [
  Category(id: 'c1', title: 'Top Picks'),
  Category(id: 'c2', title: 'Liquors'),
  Category(id: 'c3', title: 'COVID Essentials'),
  Category(id: 'c4', title: 'Fruits & Vegetables'),
  Category(id: 'c5', title: 'Mobile'),
  Category(id: 'c6', title: 'Fashion'),
  Category(id: 'c7', title: 'Made in Nepal'),
];

const dummyProducts = [
  Product(
    id: 'p1',
    title: 'Red Shirt',
    categories: ['c6'],
    description: 'A red shirt - it is pretty red!',
    price: 29.99,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
  ),
  Product(
    id: 'p2',
    title: 'HeineKen Beer',
    categories: ['c2'],
    description: 'A Heinen Beer -pure product',
    price: 50.77,
    imageUrl:
        'https://cdn.pixabay.com/photo/2013/11/13/19/49/beer-210197_960_720.jpg',
  ),
  Product(
    id: 'p3',
    title: 'Tensoval Blood Pressure Meter',
    categories: ['c3'],
    description:
        'A Tensoval Blood Pressure Meter- very Useful in this covid situation',
    price: 50.77,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/10/25/20/30/blood-pressure-3773347_960_720.jpg',
  ),
  Product(
    id: 'p4',
    title: 'Peroni Beer',
    categories: ['c2'],
    description: 'Peroni Nastro Azzurro  -Premium Beer',
    price: 50.77,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/10/18/06/beers-414914_960_720.jpg',
  ),
  Product(
    id: 'p4',
    title: 'Budweiser',
    categories: ['c2'],
    description: 'Budweiser  -Premium Beer',
    price: 50.77,
    imageUrl:
        'https://cdn.pixabay.com/photo/2020/10/30/18/35/beer-5699482_960_720.jpg',
  ),
];
