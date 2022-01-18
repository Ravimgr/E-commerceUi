import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  final String text;
  const Titles({
    Key? key,
    required EdgeInsets symmetricPadding,
    required this.text,
  })  : _symmetricPadding = symmetricPadding,
        super(key: key);

  final EdgeInsets _symmetricPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _symmetricPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.8,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(46, 58, 89, 1),
                  ),
                ),
              ),
              child: const Text(
                'See all',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0.23,
                  color: Color.fromRGBO(46, 58, 89, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
