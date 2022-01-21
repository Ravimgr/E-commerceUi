import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  const ProductItem(
      {Key? key,
      required this.id,
      required this.title,
      required this.imageUrl,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(height: 100, width: 100, child: Image.network(imageUrl)),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text('40% off'),
            )
          ],
        ),
        SizedBox(
          width: 100,
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
        Text(
          price.toString(),
          style: const TextStyle(decoration: TextDecoration.lineThrough),
        ),
      ],
    );
  }
}
