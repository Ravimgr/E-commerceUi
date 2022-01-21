import 'package:flutter/material.dart';
import 'package:onnfood/models/product.dart';
import 'package:onnfood/widgets/bottomnav_bar.dart';
import 'package:onnfood/widgets/dummydata.dart';
import 'package:onnfood/widgets/product_item.dart';
import 'package:onnfood/widgets/slider.dart';
//import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/titles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  List<Product>? categroryzedProd;

  @override
  Widget build(BuildContext context) {
    const EdgeInsets _symmetricPadding = EdgeInsets.symmetric(horizontal: 20.0);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(46, 58, 89, 1),
            title: const Text('Home'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.person))
            ],
          ),
          bottomNavigationBar: const MyBottomAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SliderWidget(),
                ListView.builder(
                    itemCount: dummyCategories.length,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) => Column(children: [
                          Titles(
                            symmetricPadding: _symmetricPadding,
                            text: dummyCategories[index].title,
                            id: dummyCategories[index].id,
                          ),
                          Container(
                            color: Colors.white,
                            margin: const EdgeInsets.only(left: 8, right: 8),
                            height: 160,
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: dummyProducts.length,
                                itemBuilder: (context, index) {
                                  List<Product> disp;
                                  disp = dummyProducts
                                      .where((element) => element.categories
                                          .contains(dummyCategories[index].id))
                                      .toList();
                                  print(disp.length);
                                  return Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Card(
                                        child: ProductItem(
                                      id: dummyProducts[index].id,
                                      title: dummyProducts[index].title,
                                      price: dummyProducts[index].price,
                                      imageUrl: dummyProducts[index].imageUrl,
                                    )),
                                  );
                                }),
                          ),
                        ])),
                const SliderWidget()
              ],
            ),
          )),
    );
  }
}
