import 'package:clan_ui/widgets/custom_tiles.dart';
import 'package:clan_ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class Discussion extends StatefulWidget {
  const Discussion({Key? key}) : super(key: key);

  @override
  State<Discussion> createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  final List<Map<String, String>> discussionTiles = [
    {'title': 'General thread', 'subtitle': '15 unread messages'},
    {
      'title': '(live) Anyone enthu for trading league lorem ipsum',
      'subtitle': '10 unread messages'
    },
    {
      'title': '(live) Anyone enthu for trading league lorem ipsum',
      'subtitle': '10 unread messages'
    },
    {'title': 'Idea collections', 'subtitle': '3 unread messages'},
    {'title': 'Tips and tricks', 'subtitle': '11 unread messages'},
  ];
  bool isExpanded = false;
  int hideLast = 2;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const ColorText('Clan discussions'),
      const SizedBox(
        height: 10,
      ),
      for (int i = 0; i < discussionTiles.length - hideLast; i++)
        DiscussionTile(
          title: discussionTiles[i]['title']!,
          subtitle: discussionTiles[i]['subtitle']!,
        ),
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
