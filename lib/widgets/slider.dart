import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          child: CarouselSlider(
            items: imgList
                .map((e) => SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        e,
                        fit: BoxFit.cover,
                      ),
                    ))
                .toList(),
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1.0,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (_current == entry.key
                      ? const Color.fromRGBO(222, 41, 57, 1)
                      : const Color.fromRGBO(218, 218, 218, 1)),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
