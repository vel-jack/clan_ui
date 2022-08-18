import 'package:clan_ui/screens/clan_activities.dart';
import 'package:clan_ui/screens/clan_members.dart';
import 'package:clan_ui/screens/discussion.dart';
import 'package:clan_ui/screens/featured_performace.dart';
import 'package:clan_ui/widgets/achievement_table.dart';
import 'package:clan_ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClanInfo(size: size),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  WhiteDivider(),
                  ColorText('Achievements'),
                  AchievementTable(),
                  WhiteDivider(),
                  FeaturedPerformance(),
                  WhiteDivider(),
                  ClanActivities(),
                  WhiteDivider(),
                  Discussion(),
                  WhiteDivider(),
                  ClanMembers(),
                  SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => showSnackBar(context),
                child: Image.asset('assets/icons/home.png'),
              ),
              InkWell(
                onTap: () => showSnackBar(context),
                child: Image.asset('assets/icons/ach.png'),
              ),
              InkWell(
                onTap: () => showSnackBar(context),
                child: Image.asset('assets/icons/rank.png'),
              ),
              InkWell(
                onTap: () => showSnackBar(context),
                child: Image.asset('assets/icons/friends.png'),
              ),
              InkWell(
                onTap: () => showSnackBar(context),
                child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/person4.jpg')),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Clicked'),
      backgroundColor: Colors.white,
      duration: Duration(milliseconds: 500),
    ));
  }
}
