import 'package:flutter/material.dart';

import 'Screens/dashboard_screen.dart';
import 'Screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var isLoggedIn = false;
  // SharedPreferences.getInstance().then((prefs) {
  //   if (prefs.get('token') != null) {
  //     isLoggedIn = true;
  //   }
  //   runApp(MyApp(isLoggedIn));
  // });
  runApp(MyApp(isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp(this.isLoggedIn, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Flutter',
      home: !isLoggedIn ? LoginScreen() : Dashboard(),
    );
  }
}
