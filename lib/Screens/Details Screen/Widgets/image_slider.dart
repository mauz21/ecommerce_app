import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  // final String? image;
  const ImageSlider(
      {super.key,
      required this.onChange,
      // required this.image,
      required int currentSlide,
      required String image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Hero(
              tag: "slider",
              child: Image.asset(
                "images/slider.jpg",
                fit: BoxFit.cover,
              ));
        },
      ),
    );
  }
}
