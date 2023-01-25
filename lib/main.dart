import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cocktails/constants.dart';
import 'package:cocktails/ui_windows/search_window.dart';

void main() {
  //portrait mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(Cocktails()));
}

class Cocktails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //theme -> dark mode
    return MaterialApp(
      home: SearchWindow(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
    );
  }
}
