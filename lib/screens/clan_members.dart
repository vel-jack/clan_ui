import 'package:clan_ui/widgets/custom_tiles.dart';
import 'package:clan_ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ClanMembers extends StatefulWidget {
  const ClanMembers({Key? key}) : super(key: key);

  @override
  State<ClanMembers> createState() => _ClanMembersState();
}

class _ClanMembersState extends State<ClanMembers> {
  final List<Map<String, String>> members = [
    {'image': 'assets/images/person1.jpg', 'role': 'Lorem ipsum - Clan head'},
    {
      'image': 'assets/images/person2.jpg',
      'role': 'Lorem ipsum - Debating Sensei'
    },
    {'image': 'assets/images/person3.jpg', 'role': 'Lorem ipsum - Clan Member'},
    {'image': 'assets/images/person4.jpg', 'role': 'Lorem ipsum - Clan Member'},
  ];
  bool isExpanded = false;
  int hideLast = 2;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const ColorText('Clan members'),
      for (int i = 0; i < members.length - hideLast; i++)
        MemberTile(
          image: members[i]['image']!,
          // image: 'assets/images/person3.jpg',
          role: members[i]['role']!,
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
