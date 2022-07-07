import 'package:flutter/material.dart';
import 'screens/future_screen_view.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: FutureScreenView(),
    );
  }
}
