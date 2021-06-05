import 'package:carousel_slider/carousel_slider.dart';
import 'package:evaly_clone/views/screens/nav_items/nav_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdBanner extends StatelessWidget {
  final List<Widget> images;

  const AdBanner({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),

      // height: 150.0,
      // width: double.infinity,
      child: CarouselSlider(
        items: images,
        options: CarouselOptions(
            height: 150,
            viewportFraction: 1,
            onPageChanged: (index, reaseon) {
              print('Index: $index');
              context.read(cousulaIndex.notifier).setIndex(index);
            }),
      ),
    );
  }
}
