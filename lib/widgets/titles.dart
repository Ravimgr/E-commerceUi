import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Titles extends StatelessWidget {
  final String text;
  final String id;
  const Titles({
    Key? key,
    required EdgeInsets symmetricPadding,
    required this.text,
    required this.id,
  })  : _symmetricPadding = symmetricPadding,
        super(key: key);

  final EdgeInsets _symmetricPadding;

  saveCategoryId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('catId', id);
  }

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
