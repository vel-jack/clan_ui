import 'package:clan_ui/utils/constants.dart';
import 'package:clan_ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class FuturedTile extends StatelessWidget {
  const FuturedTile({Key? key, required this.image, required this.text})
      : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Image.asset(
            // 'assets/images/featured_bg.jpg',
            image,
            width: 124,
            height: 124,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: ColorText(
              // 'Priya in International Debating League',
              text,
              color: pink,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class DiscussionTile extends StatelessWidget {
  const DiscussionTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColorText(
            title,
            color: pink,
            size: 18,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          ColorText(
            subtitle,
            color: Colors.white,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class ActivityTile extends StatelessWidget {
  const ActivityTile(this.text, {Key? key}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/activity_bg.jpg'),
          fit: BoxFit.cover,
          opacity: 0.4,
        ),
      ),
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class MemberTile extends StatelessWidget {
  const MemberTile({Key? key, required this.image, required this.role})
      : super(key: key);
  final String image;
  final String role;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 3.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(
            width: 30,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ColorText(
                role,
                color: pink,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
