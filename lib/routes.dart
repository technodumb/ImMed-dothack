import 'package:flutter/material.dart';
import 'package:immed_dothack/ProfileHome/profile_home.dart';
import 'ProfileSwitcher/profile_switcher.dart';

var pageRoutes = <String, Widget Function(BuildContext)>{
  '/profile_switcher': (BuildContext context) => const ProfileSwitcher(),
  '/profile_home': (BuildContext context) => const ProfileHome(),
};
