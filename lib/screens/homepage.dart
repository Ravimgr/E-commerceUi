import 'package:flutter/material.dart';
import 'package:onnfood/models/product.dart';
import 'package:onnfood/widgets/product_item.dart';
import 'package:onnfood/widgets/slider.dart';

import '../widgets/titles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  List<Product> productList = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const EdgeInsets _symmetricPadding = EdgeInsets.symmetric(horizontal: 20.0);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.white,
            title: const Text('Home'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.person))
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SliderWidget(),
              const Titles(
                symmetricPadding: _symmetricPadding,
                text: 'Top Picks',
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productList.length,
                    itemBuilder: ((context, index) => ProductItem(
                          id: productList[index].id,
                          title: productList[index].title,
                          imageUrl: productList[index].imageUrl,
                          price: productList[index].price,
                        ))),
              ),
              const Titles(
                symmetricPadding: _symmetricPadding,
                text: 'Liquors',
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          )),
    );
  }
}
