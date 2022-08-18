import 'package:clan_ui/widgets/custom_tiles.dart';
import 'package:clan_ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ClanActivities extends StatefulWidget {
  const ClanActivities({Key? key}) : super(key: key);

  @override
  State<ClanActivities> createState() => _ClanActivitiesState();
}

class _ClanActivitiesState extends State<ClanActivities> {
  final activiyTiles = [
    'Live trading championship',
    'Treasure hunt',
    'Reverse Acting',
    'Collecting Assets'
  ];
  bool isExpanded = false;
  int hideLast = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const ColorText('Live clan activies on platform'),
        for (int i = 0; i < activiyTiles.length - hideLast; i++)
          ActivityTile(activiyTiles[i]),
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
      ],
    );
  }
}
