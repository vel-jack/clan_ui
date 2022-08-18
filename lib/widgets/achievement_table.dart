import 'package:clan_ui/utils/constants.dart';
import 'package:clan_ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class AchievementTable extends StatelessWidget {
  const AchievementTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(children: [
          const ColorText(
            'Current league',
            color: pink,
            size: 20,
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 24),
              child: Image.asset('assets/icons/shield.png')),
        ]),
        const TableRow(children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ColorText(
              'League ranking',
              color: pink,
              size: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 24),
            child: ColorText(
              '11th',
              size: 48,
            ),
          ),
        ]),
        const TableRow(children: [
          Padding(
            padding: EdgeInsets.only(top: 18),
            child: ColorText(
              'Experience',
              color: pink,
              size: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 18),
            child: ColorText(
              '2000 xp',
              size: 26,
            ),
          ),
        ]),
        const TableRow(children: [
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: ColorText(
              '# of wins',
              color: pink,
              size: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 24),
            child: ColorText(
              '3',
              size: 26,
            ),
          ),
        ]),
      ],
    );
  }
}
