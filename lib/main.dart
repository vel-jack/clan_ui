import 'package:clan_ui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Clan UI',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'ArtegraSoft',
          scaffoldBackgroundColor: Colors.black,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                brightness: Brightness.dark,
              )),
    );
  }
}
