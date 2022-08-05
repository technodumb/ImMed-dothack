import 'package:flutter/material.dart';
import 'package:immed_dothack/globals.dart';
import 'package:immed_dothack/routes.dart';
import 'package:provider/provider.dart';

import 'ProfileSwitcher/components/state_for_slider.dart';
import 'ProfileSwitcher/profile_switcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider<SliderState>(create: (_) => SliderState()),
          // ChangeNotifierProvider<TextFieldState>(create: (_) => TextFieldState()),        
        ],
        child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const ProfileSwitcher(),
        routes: pageRoutes,
      ),
    );
  }
}
