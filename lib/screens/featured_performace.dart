import 'package:clan_ui/widgets/custom_widgets.dart';
import 'package:clan_ui/widgets/custom_tiles.dart';
import 'package:flutter/material.dart';

class FeaturedPerformance extends StatefulWidget {
  const FeaturedPerformance({Key? key}) : super(key: key);

  @override
  State<FeaturedPerformance> createState() => _FeaturedPerformanceState();
}

class _FeaturedPerformanceState extends State<FeaturedPerformance> {
  final List<Map<String, String>> futuredTiles = [
    {
      'asset': 'assets/images/featured_bg.jpg',
      'text': 'Priya in International Debating League'
    },
    {
      'asset': 'assets/images/person3.jpg',
      'text': 'Akshay in Global Quizzing Finals',
    },
    {
      'asset': 'assets/images/person4.jpg',
      'text': 'Lorem ipsum dolor sit amet.',
    },
    {
      'asset': 'assets/images/person1.jpg',
      'text': 'Consectetur adipiscing elit, sed do eiusmod',
    }
  ];
  bool isExpanded = false;
  int hideLast = 2;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const ColorText('Past featured performances'),
      for (int i = 0; i < futuredTiles.length - hideLast; i++)
        FuturedTile(
            image: futuredTiles[i]['asset']!, text: futuredTiles[i]['text']!),
      InkWell(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
            hideLast = isExpanded ? 0 : 2;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          child: ColorText(
            isExpanded ? 'see less' : 'see more',
            size: 14,
          ),
        ),
      ),
    ]);
  }
}
