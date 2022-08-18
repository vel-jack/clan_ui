import 'package:clan_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class ClanInfo extends StatelessWidget {
  const ClanInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      height: size.width - 15,
      width: size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: amber,
          width: 2,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Container(
                height: 135,
                width: double.infinity,
                color: const Color.fromARGB(164, 0, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Clan name: Lorem Ipsum',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        '28 members, 5 online',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class ColorText extends StatelessWidget {
  const ColorText(
    this.text, {
    Key? key,
    this.size = 22,
    this.color = amber,
    this.overflow,
  }) : super(key: key);
  final String text;
  final double size;
  final Color color;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}

class WhiteDivider extends StatelessWidget {
  const WhiteDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Divider(
        thickness: 3,
        height: 25,
        color: Colors.white,
      ),
    );
  }
}
